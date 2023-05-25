import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tabs_event.dart';
part 'tabs_state.dart';
part 'tabs_bloc.freezed.dart';

@injectable
class TabsBloc extends Bloc<TabsEvent, TabsState> {
  TabsBloc() : super(const TabsState()) {
    on<_TabSelected>(_onTabSelected);
  }

  void _onTabSelected(
    _TabSelected event,
    Emitter<TabsState> emit,
  ) {
    emit(
      TabsState(
        currentSelectedIndex: event.index,
      ),
    );
  }
}
