import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

abstract class NavigationKeyContainer {
  GlobalKey<NavigatorState> get key;
}

@lazySingleton
class ShellNavigationKeyContainer extends NavigationKeyContainer {
  @override
  final key = GlobalKey<NavigatorState>(debugLabel: 'shell');
}

@lazySingleton
class RootNavigationKeyContainer extends NavigationKeyContainer {
  @override
  final key = GlobalKey<NavigatorState>(debugLabel: 'root');
}
