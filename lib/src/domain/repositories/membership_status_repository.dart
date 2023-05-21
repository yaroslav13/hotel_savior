import 'package:flutter/foundation.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/membership_status/membership_status.dart';

abstract interface class MembershipStatusRepository {
  Future<void> assignMembershipStatusToCurrentUser({
    required MembershipStatus membershipStatus,
  });

  Future<MembershipStatus> fetchMembershipStatusOfCurrentUser();

  Stream<MembershipStatus> get membershipStatusStream;

  // This method is only for DI purposes
  @protected
  void dispose();
}
