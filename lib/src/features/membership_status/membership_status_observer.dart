import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hotel_savior/src/features/base/bloc_helper.dart';
import 'package:hotel_savior/src/features/membership_status/membership_status_observer_bloc.dart';

class MembershipStatusObserver extends HookWidget
    with
        BlocHelper<MembershipStatusObserverBloc, MembershipStatusObserverEvent,
            MembershipStatusObserverState> {
  const MembershipStatusObserver({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final bloc = getBoundBloc(context);
    final appLifecycleState = useAppLifecycleState();

    useEffect(
      () {
        if (appLifecycleState == AppLifecycleState.resumed) {
          bloc.add(const AppOpened());
        }

        return null;
      },
      [appLifecycleState],
    );

    return child;
  }
}
