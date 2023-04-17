import 'package:hotel_savior/src/features/navigation/routes/base/base_root_route.dart';
import 'package:hotel_savior/src/features/navigation/routes/base/base_route.dart';

enum AppRootRoutes implements BaseRootRoute {
  splash(path: '/splash', routeName: 'splash'),
  home(path: '/home', routeName: 'home'),
  login(path: '/login', routeName: 'login');

  const AppRootRoutes({
    required this.routeName,
    required this.path,

    ///TODO: delete ignore lint when app grow up
    // ignore: unused_element
    this.nested = false,
  });

  @override
  final String path;

  @override
  final String routeName;

  @override
  final bool nested;

  @override
  int compareTo(BaseRoute other) => routeName.compareTo(other.routeName);
}
