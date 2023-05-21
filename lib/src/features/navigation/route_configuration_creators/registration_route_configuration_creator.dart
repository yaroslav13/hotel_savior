import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/base_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/registration/registration_screen.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegistrationRouteConfigurationCreator
    extends BaseRouteConfigurationCreator {
  @override
  GoRouterWidgetBuilder? get builder => (_, __) => const RegistrationScreen();
}
