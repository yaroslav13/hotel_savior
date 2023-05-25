import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/membership_status/membership_status.dart';
import 'package:hotel_savior/src/domain/interactors/subscribe_membership_status_changes_interactor.dart';
import 'package:injectable/injectable.dart';

part 'membership_status_observer_event.dart';
part 'membership_status_observer_state.dart';
part 'membership_status_observer_bloc.freezed.dart';

@injectable
class MembershipStatusObserverBloc
    extends Bloc<MembershipStatusObserverEvent, MembershipStatusObserverState> {
  MembershipStatusObserverBloc(
    this._subscribeMembershipStatusChangesInteractor,
  ) : super(const MembershipStatusObserverState()) {
    _subscribeToMembershipStatusChanges();
    on<_MembershipStatusChanged>(_onMembershipStatusChanged);
  }

  final SubscribeMembershipStatusChangesInteractor
      _subscribeMembershipStatusChangesInteractor;

  late final StreamSubscription<MembershipStatus>
      _membershipStatusChangesSubscription;

  @override
  Future<void> close() async {
    await _membershipStatusChangesSubscription.cancel();
    await super.close();
  }


  void _subscribeToMembershipStatusChanges() {
    _membershipStatusChangesSubscription =
        _subscribeMembershipStatusChangesInteractor().listen(
      (membershipStatus) {
        add(
          _MembershipStatusChanged(
            membershipStatus: membershipStatus,
          ),
        );
      },
    );
  }

  Future<void> _onMembershipStatusChanged(
    _MembershipStatusChanged event,
    Emitter<MembershipStatusObserverState> emit,
  ) async {
    emit(
      MembershipStatusObserverState(
        membershipStatus: event.membershipStatus,
      ),
    );
  }
}
