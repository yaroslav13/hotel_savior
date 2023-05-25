import 'package:flutter/material.dart';
import 'package:hotel_savior/src/features/base/bloc_binder.dart';
import 'package:hotel_savior/src/features/base/bloc_helper.dart';
import 'package:hotel_savior/src/features/extensions/build_context_navigation_x.dart';
import 'package:hotel_savior/src/features/navigation/routes/app_root_routes.dart';
import 'package:hotel_savior/src/features/tabs/tabs_bloc.dart';

abstract class _Tabs {
  static const home = 0;
  static const explore = 1;
  static const qrCode = 2;
  static const updates = 3;
  static const profile = 4;
}

class TabsScreen extends StatelessWidget {
  const TabsScreen({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBinder<TabsEvent, TabsState, TabsBloc>(
      child: _TabsView(
        child: child,
      ),
    );
  }
}

class _TabsView extends StatelessWidget
    with BlocHelper<TabsBloc, TabsEvent, TabsState> {
  const _TabsView({required this.child});

  final Widget child;

  bool _isTabChanged(TabsState previous, TabsState current) =>
      previous.currentSelectedIndex != current.currentSelectedIndex;

  void _onTabChanged(BuildContext context, TabsState state) {
    switch (state.currentSelectedIndex) {
      case _Tabs.home:
        context.navigate(AppRootRoutes.home);
      case _Tabs.explore:
        context.navigate(AppRootRoutes.explore);
      case _Tabs.qrCode:
        context.navigate(AppRootRoutes.qrCode);
      case _Tabs.profile:
        context.navigate(AppRootRoutes.profile);
      case _Tabs.updates:
        context.navigate(AppRootRoutes.updates);
      default:
        context.navigate(AppRootRoutes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return listen(
      listenWhen: _isTabChanged,
      listener: _onTabChanged,
      child: Scaffold(
        body: child,
        bottomNavigationBar: observe(
          builder: (context, state) {
            return BottomNavigationBar(
              currentIndex: state.currentSelectedIndex,
              onTap: (value) => getBoundBloc(context).add(
                TabsEvent.onTabSelected(index: value),
              ),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.house_outlined),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.map_outlined),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.qr_code_scanner_outlined),
                  label: 'QR Code',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper_outlined),
                  label: 'Updates',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined),
                  label: 'Me',
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
