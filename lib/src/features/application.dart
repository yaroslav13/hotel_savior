import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_savior/src/features/auth/auth_bloc.dart';
import 'package:hotel_savior/src/features/base/bloc_binder.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:hotel_savior/src/features/membership_status/membership_status_observer.dart';
import 'package:hotel_savior/src/features/navigation/router_configurator.dart';
import 'package:hotel_savior/src/features/size_adapter_provider/size_adapter_provider.dart';
import 'package:hotel_savior/src/features/tabs/tabs_screen.dart';
import 'package:hotel_savior/src/features/theme/app_theme_factory.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    final routerConfigurator = context.getDependency<RouterConfigurator>()
      ..setShellRouteFoundation((child) => TabsScreen(child: child));

    return ScreenUtilInit(
      builder: (context, _) {
        final theme = context.getDependency<AppThemeFactory>().create();

        return SizeAdapterProvider(
          child: BlocBinder<AuthEvent, AuthState, AuthBloc>(
            child: MembershipStatusObserver(
              child: MaterialApp.router(
                routerConfig: routerConfigurator.config,
                debugShowCheckedModeBanner: false,
                theme: theme,
                locale: context.locale,
                supportedLocales: context.supportedLocales,
                localizationsDelegates: context.localizationDelegates,
              ),
            ),
          ),
        );
      },
    );
  }
}
