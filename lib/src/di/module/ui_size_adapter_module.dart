import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';

@module
abstract class UiSizeAdapterModule {
  @injectable
  ScreenUtil get screenUtil => ScreenUtil();
}
