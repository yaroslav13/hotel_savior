import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_savior/features/dependencies/dependencies_bloc.dart';

extension BuildContextX on BuildContext {
  T getDependency<T extends Object>() {
    final injection = read<DependenciesBloc>().state.injection;
    if (injection == null) {
      throw Exception('Dependencies is not ready to use!');
    }

    return injection.get<T>();
  }
}
