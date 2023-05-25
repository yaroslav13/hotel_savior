part of 'membership_status_observer_bloc.dart';

@freezed
class MembershipStatusObserverState with _$MembershipStatusObserverState {
  const factory MembershipStatusObserverState({
    MembershipStatus? membershipStatus,
  }) = _MembershipStatusObserverState;

}
