import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/gender/gender.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/relationship_status/relationship_status.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/user_credentials/user_credentials.dart';

part 'user_details.freezed.dart';

part 'user_details.g.dart';

@freezed
class UserDetails with _$UserDetails {
  const factory UserDetails({
    required String fullName,
    required Gender gender,
    required DateTime birthdayDate,
    required int kidsCount,
    required String email,
    RelationshipStatus? relationshipStatus,
  }) = _UserDetails;

  const factory UserDetails.withCredentials({
    required String fullName,
    required UserCredentials userCredentials,
    required Gender gender,
    required DateTime birthdayDate,
    required int kidsCount,
    RelationshipStatus? relationshipStatus,
  }) = UserDetailsWithCredentials;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
}
