import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

extension BuildContextDependenciesX on BuildContext {
  T getDependency<T extends Object>() {
    final injection = read<GetIt>();

    return injection.get<T>();
  }
}
