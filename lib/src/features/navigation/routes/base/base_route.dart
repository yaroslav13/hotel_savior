import 'package:flutter/foundation.dart';

@immutable
abstract class BaseRoute implements Comparable<BaseRoute> {
  String get routeName;

  String get path;

  @override
  int compareTo(BaseRoute other);
}
