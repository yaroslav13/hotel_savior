part of 'dependencies_bloc.dart';

@freezed
class DependenciesState with _$DependenciesState {
  const factory DependenciesState({
    GetIt? injection,
  }) = _DependenciesState;
}
