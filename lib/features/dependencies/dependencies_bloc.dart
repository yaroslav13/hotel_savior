import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

part 'dependencies_event.dart';
part 'dependencies_state.dart';
part 'dependencies_bloc.freezed.dart';

@lazySingleton
class DependenciesBloc extends Bloc<DependenciesEvent, DependenciesState> {
  DependenciesBloc() : super(const DependenciesState()) {
    on<DependenciesEvent>((event, emit) {
      emit(DependenciesState(injection: event.injection));
    });
  }
}
