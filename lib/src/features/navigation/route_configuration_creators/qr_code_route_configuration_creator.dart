import 'package:go_router/go_router.dart';
import 'package:hotel_savior/src/features/navigation/route_configuration_creators/base_route_configuration_creator.dart';
import 'package:hotel_savior/src/features/qr_code/qr_code_screen.dart';
import 'package:injectable/injectable.dart';

@injectable
class QrCodeRouteConfigurationCreator extends BaseRouteConfigurationCreator {
  @override
  GoRouterPageBuilder? get pageBuilder => (_, state) => NoTransitionPage<void>(
        restorationId: state.pageKey.value,
        key: state.pageKey,
        child: const QrCodeScreen(),
      );
}
