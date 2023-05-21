import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_savior/src/features/extensions/build_context_dependencies_x.dart';
import 'package:provider/provider.dart';

class SizeAdapterProvider extends StatelessWidget {
  const SizeAdapterProvider({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) => Provider(
        create: (context) => context.getDependency<ScreenUtil>(),
        child: child,
      );
}
