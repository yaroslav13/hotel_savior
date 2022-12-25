import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_savior/features/extensions/build_context_x.dart';
import 'package:hotel_savior/features/navigation/app_router.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = context.getDependency<AppRouter>();
    return ScreenUtilInit(
      builder: (context, _) => MaterialApp.router(
        routerConfig: appRouter.config,
      ),
    );
  }
}
