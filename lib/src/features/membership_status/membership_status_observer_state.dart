part of 'membership_status_observer_bloc.dart';

@freezed
class MembershipStatusObserverState with _$MembershipStatusObserverState {
  const factory MembershipStatusObserverState.initial() = _Initial;
  const factory MembershipStatusObserverState.membershipStatusChanged({
    required MembershipStatus membershipStatus,
  }) = _MembershipStatusChanged;
}
