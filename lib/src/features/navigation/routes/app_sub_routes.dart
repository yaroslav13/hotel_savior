import 'package:hotel_savior/src/features/navigation/routes/app_root_routes.dart';
import 'package:hotel_savior/src/features/navigation/routes/base/base_route.dart';
import 'package:hotel_savior/src/features/navigation/routes/base/base_sub_route.dart';

enum AppSubRoutes implements BaseSubRoute {
  registration(nameOrNull: 'registration', path: 'registration');

  const AppSubRoutes({
    required this.path,
    this.nameOrNull,
  });

  @override
  final String path;

  final String? nameOrNull;

  @override
  String get routeName {
    final nameOrNull = this.nameOrNull;
    assert(nameOrNull != null, '$this is unnamed route');

    //ignore: avoid-non-null-assertion
    return nameOrNull!;
  }

  @override
  List<BaseRoute> get roots {
    switch (this) {
      case AppSubRoutes.registration:
        return [AppRootRoutes.login];
    }
  }

  @override
  int compareTo(BaseRoute other) => path.compareTo(other.path);
}
