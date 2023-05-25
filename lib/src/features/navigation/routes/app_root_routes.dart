import 'package:hotel_savior/src/features/navigation/routes/base/base_root_route.dart';
import 'package:hotel_savior/src/features/navigation/routes/base/base_route.dart';

enum AppRootRoutes implements BaseRootRoute {
  splash(path: '/splash', routeName: 'splash'),
  home(path: '/home', routeName: 'home', nested: true),
  qrCode(path: '/qr_code', routeName: 'qr_code', nested: true),
  updates(path: '/updates', routeName: 'updates', nested: true),
  profile(path: '/profile', routeName: 'profile', nested: true),
  explore(path: '/explore', routeName: 'explore', nested: true),
  login(path: '/login', routeName: 'login');

  const AppRootRoutes({
    required this.routeName,
    required this.path,
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
