import 'package:hotel_savior/src/features/navigation/routes/base/base_route.dart';

abstract class BaseSubRoute extends BaseRoute {
  List<BaseRoute> get roots;
}