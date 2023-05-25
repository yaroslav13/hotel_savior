part of 'tabs_bloc.dart';

@freezed
class TabsState with _$TabsState {
  const factory TabsState({
    @Default(0) int currentSelectedIndex,
  }) = _TabsState;
}
