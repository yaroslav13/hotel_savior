import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotel_savior/src/data/api/user_api.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/user_details/user_details.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/unknown_exception.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/user_not_found_exception.dart';
import 'package:hotel_savior/src/domain/repositories/auth_repository.dart';
import 'package:hotel_savior/src/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(
    this._authRepository,
    this._userApi,
  );

  final AuthRepository _authRepository;

  final UserApi _userApi;

  @override
  Future<UserDetails> fetchCurrentUser() async {
    final currentUserId = _authRepository.authorizedUserId;
    final currentUserJson = await _userApi.getUserById(currentUserId);

    if (currentUserJson == null) {
      throw const UserNotFoundException();
    }

    return UserDetails.fromJson(currentUserJson);
  }

  @override
  Future<void> fillUserDetails(UserDetailsWithCredentials userDetails) async {
    try {
      final userDetailsWithoutCredentials = UserDetails(
        fullName: userDetails.fullName,
        gender: userDetails.gender,
        birthdayDate: userDetails.birthdayDate,
        kidsCount: userDetails.kidsCount,
        relationshipStatus: userDetails.relationshipStatus,
        email: userDetails.userCredentials.email,
      );

      final userId = _authRepository.authorizedUserId;

      await _userApi.createUser(
        documentId: userId,
        data: userDetailsWithoutCredentials.toJson(),
      );
    } on FirebaseException {
      throw const UnknownException();
    }
  }
}
