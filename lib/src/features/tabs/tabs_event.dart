part of 'tabs_bloc.dart';

@freezed
class TabsEvent with _$TabsEvent {
  const factory TabsEvent.onTabSelected({
    required int index,
  }) = _TabSelected;
}
