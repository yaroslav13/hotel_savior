part of 'dependencies_bloc.dart';

@freezed
class DependenciesEvent with _$DependenciesEvent {
  const factory DependenciesEvent(
    GetIt? injection,
  ) = _DependenciesReady;
}
