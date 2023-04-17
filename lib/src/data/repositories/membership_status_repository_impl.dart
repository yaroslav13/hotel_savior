import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hotel_savior/src/data/api/membership_status_api.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/membership_status/membership_status.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/unknown_exception.dart';
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
    _subscribeAuthorizationChanges();
  }

  final AuthRepository _authRepository;

  final MembershipStatusApi _membershipStatusApi;

  late final StreamSubscription<String?> _authorizationIdSubscription;
  late final StreamSubscription<String?> _membershipStatusSubscription;

  final _membershipStatusPublishSubject = PublishSubject<MembershipStatus>();
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

  @disposeMethod
  Future<void> dispose() async {
    await _membershipStatusSubscription.cancel();
    await _membershipStatusPublishSubject.close();
    await _authorizationIdSubscription.cancel();
  }

  void _subscribeAuthorizationChanges() {
    _authorizationIdSubscription =
        _authRepository.authorizationIdStream.listen((authorizationId) {
      if (authorizationId != null && !_membershipStatusSubscription.isPaused) {
        _subscribeMembershipStatusChanges(authorizationId);
      }
    });
  }

  void _subscribeMembershipStatusChanges(String currentUserId) {
    _membershipStatusSubscription =
        _membershipStatusApi.onMembershipStatusChanged(currentUserId).listen(
      (membershipStatusName) {
        final membershipStatus = MembershipStatus.values.firstWhere(
          (membershipStatus) => membershipStatus.name == membershipStatusName,
        );
        _membershipStatusPublishSubject.add(membershipStatus);
      },
    );
  }
}
