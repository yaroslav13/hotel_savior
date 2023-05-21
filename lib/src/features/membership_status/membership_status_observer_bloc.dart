import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/membership_status/membership_status.dart';
import 'package:hotel_savior/src/domain/interactors/fetch_membership_status_of_current_user_interactor.dart';
import 'package:injectable/injectable.dart';

part 'membership_status_observer_event.dart';
part 'membership_status_observer_state.dart';
part 'membership_status_observer_bloc.freezed.dart';

@injectable
class MembershipStatusObserverBloc
    extends Bloc<MembershipStatusObserverEvent, MembershipStatusObserverState> {
  MembershipStatusObserverBloc(
    this._fetchMembershipStatusOfCurrentUserInteractor,
  ) : super(const _Initial()) {
    on<AppOpened>(_onAppOpened);
  }

  final FetchMembershipStatusOfCurrentUserInteractor
      _fetchMembershipStatusOfCurrentUserInteractor;

  Future<void> _onAppOpened(
    AppOpened event,
    Emitter<MembershipStatusObserverState> emit,
  ) async {
    final membershipStatus =
        await _fetchMembershipStatusOfCurrentUserInteractor();

    emit(
      MembershipStatusObserverState.membershipStatusChanged(
        membershipStatus: membershipStatus,
      ),
    );
  }

  Future<void> _onMembershipStatusChanged(
    MembershipStatus membershipStatus,
    Emitter<MembershipStatusObserverState> emit,
  ) async {
    emit(
      MembershipStatusObserverState.membershipStatusChanged(
        membershipStatus: membershipStatus,
      ),
    );
  }
}
