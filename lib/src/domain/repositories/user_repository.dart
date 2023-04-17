import 'package:hotel_savior/src/domain/business_domain/entities/user_details/user_details.dart';

abstract interface class UserRepository {
  Future<UserDetails> fetchCurrentUser();
  Future<void> fillUserDetails(UserDetailsWithCredentials userDetails);
}
