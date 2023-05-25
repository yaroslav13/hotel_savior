part of 'membership_status_observer_bloc.dart';

@freezed
class MembershipStatusObserverEvent with _$MembershipStatusObserverEvent {
  const factory MembershipStatusObserverEvent.membershipStatusChanged({
    required MembershipStatus membershipStatus,
  }) = _MembershipStatusChanged;
}
