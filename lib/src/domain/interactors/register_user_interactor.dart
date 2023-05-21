import 'package:hotel_savior/src/domain/base/base_interactor.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/membership_status/membership_status.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/user_details/user_details.dart';
import 'package:hotel_savior/src/domain/repositories/auth_repository.dart';
import 'package:hotel_savior/src/domain/repositories/membership_status_repository.dart';
import 'package:hotel_savior/src/domain/repositories/push_notifications_repository.dart';
import 'package:hotel_savior/src/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterUserInteractor
    implements BaseInteractor<void, UserDetailsWithCredentials> {
  const RegisterUserInteractor(
    this._authRepository,
    this._userRepository,
    this._pushNotificationsRepository,
    this._membershipStatusRepository,
  );

  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  final PushNotificationsRepository _pushNotificationsRepository;
  final MembershipStatusRepository _membershipStatusRepository;

  @override
  Future<void> call(UserDetailsWithCredentials param) async {
    await _authRepository.signUp(param.userCredentials);
    await _pushNotificationsRepository.askPermission();

    ///if this method failed we need to log out user
    await _userRepository.fillUserDetails(param);
    await _membershipStatusRepository.assignMembershipStatusToCurrentUser(
      membershipStatus: MembershipStatus.inactive,
    );
  }
}
