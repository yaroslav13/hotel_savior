import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/membership_status/membership_status.dart';
import 'package:hotel_savior/src/features/base/bloc_binder.dart';
import 'package:hotel_savior/src/features/base/bloc_helper.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/extensions/build_context_navigation_x.dart';
import 'package:hotel_savior/src/features/membership_status/membership_status_observer_bloc.dart';
import 'package:hotel_savior/src/features/navigation/navigation_key_container/navigation_key_container.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_root_routes.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_sub_routes.dart';

class MembershipStatusObserver extends StatelessWidget {
  const MembershipStatusObserver({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBinder<MembershipStatusObserverEvent,
        MembershipStatusObserverState, MembershipStatusObserverBloc>(
      child: _MembershipStatusObserverWidget(
        child: child,
      ),
    );
  }
}

class _MembershipStatusObserverWidget extends HookWidget
    with
        BlocHelper<MembershipStatusObserverBloc, MembershipStatusObserverEvent,
            MembershipStatusObserverState> {
  const _MembershipStatusObserverWidget({
    required this.child,
  });

  final Widget child;

  bool _isMembershipStatusChanged(
    MembershipStatusObserverState previous,
    MembershipStatusObserverState current,
  ) {
    return previous.membershipStatus != current.membershipStatus;
  }

  void _onMembershipStatusChanged(
    BuildContext context,
    MembershipStatusObserverState state,
  ) {
    final navigatorKey =
        context.getDependency<RootNavigationKeyContainer>().key;

    final membershipStatus = state.membershipStatus;
    if (membershipStatus == null) {
      return;
    }

    final navigatorContext = navigatorKey.currentContext;
    switch (membershipStatus) {
      case MembershipStatus.active:
        navigatorContext?.navigate(AppRootRoutes.home);
      case MembershipStatus.inactive || MembershipStatus.expired:
        navigatorContext?.navigate(AppSubRoutes.membershipActivation);
    }
  }

  @override
  Widget build(BuildContext context) {
    return listen(
      listenWhen: _isMembershipStatusChanged,
      listener: _onMembershipStatusChanged,
      child: child,
    );
  }
}
