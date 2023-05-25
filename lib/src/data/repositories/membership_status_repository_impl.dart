import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hotel_savior/src/data/api/membership_status_api.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/membership_status/membership_status.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/unknown_exception.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/user_not_found_exception.dart';
import 'package:hotel_savior/src/domain/repositories/auth_repository.dart';
import 'package:hotel_savior/src/domain/repositories/membership_status_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

@LazySingleton(as: MembershipStatusRepository)
class MembershipStatusRepositoryImpl implements MembershipStatusRepository {
  MembershipStatusRepositoryImpl(
    this._authRepository,
    this._membershipStatusApi,
  ) {
    _onInit();
  }

  final AuthRepository _authRepository;

  final MembershipStatusApi _membershipStatusApi;

  final _membershipStatusPublishSubject = PublishSubject<MembershipStatus>();

  StreamSubscription<String?>? _authorizationIdSubscription;
  StreamSubscription<String?>? _membershipStatusSubscription;

  @override
  Stream<MembershipStatus> get membershipStatusStream =>
      _membershipStatusPublishSubject.stream;

  @override
  Future<void> assignMembershipStatusToCurrentUser({
    required MembershipStatus membershipStatus,
  }) async {
    try {
      final currentUserId = _authRepository.authorizedUserId;
      await _membershipStatusApi.createMembershipStatus(
        documentId: currentUserId,
        membershipStatus: membershipStatus.name,
      );
    } on FirebaseException {
      throw const UnknownException();
    }
  }

  @override
  Future<MembershipStatus> fetchMembershipStatusOfCurrentUser() async {
    final currentUserId = _authRepository.authorizedUserId;
    final membershipStatusName =
        await _membershipStatusApi.fetchMembershipStatusByUserId(currentUserId);

    if (membershipStatusName == null) {
      throw const UnknownException();
    }

    return MembershipStatus.values.firstWhere(
      (membershipStatus) => membershipStatus.name == membershipStatusName,
    );
  }

  @override
  @disposeMethod
  Future<void> dispose() async {
    await _membershipStatusSubscription?.cancel();
    await _membershipStatusPublishSubject.close();
    await _authorizationIdSubscription?.cancel();
  }

  void _onInit() {
    try {
      final currentUserId = _authRepository.authorizedUserId;
      _subscribeMembershipStatusChanges(currentUserId, skipEventCount: 1);
    } on UserNotFoundException {
      // ignore
    } finally {
      _subscribeAuthorizationChanges();
    }
  }

  void _subscribeAuthorizationChanges() {
    _authorizationIdSubscription ??=
        _authRepository.authorizationIdStream.listen((authorizationId) {
      final isMembershipStatusSubscriptionPaused =
          _membershipStatusSubscription?.isPaused ?? false;    
      if (authorizationId != null && !isMembershipStatusSubscriptionPaused) {
        _subscribeMembershipStatusChanges(authorizationId);
      }
    });
  }

  void _subscribeMembershipStatusChanges(
    String currentUserId, {
    int skipEventCount = 0,
  }) {
    _membershipStatusSubscription ??= _membershipStatusApi
        .onMembershipStatusChanged(currentUserId)
        .skip(skipEventCount)
        .listen(
      (membershipStatusName) {
        final membershipStatus = MembershipStatus.values.firstWhere(
          (membershipStatus) => membershipStatus.name == membershipStatusName,
        );
        _membershipStatusPublishSubject.add(membershipStatus);
      },
    );
  }
}
