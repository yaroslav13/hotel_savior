import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/domain/interactors/check_is_user_authorized_interactor.dart';
import 'package:injectable/injectable.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(
    this._checkIsUserAuthorizedInteractor,
  ) : super(const SplashState()) {
    on<SplashEvent>((event, emit) async {
      if (event is _Started) {
        await _startLogoResizing(emit);

        // Firebase auth check is synchronous, so we need to delay it a bit
        await Future<void>.delayed(const Duration(milliseconds: 500));
        await _checkIsUserAuthorized(emit);
      }
    });
  }

  final CheckIsUserAuthorizedInteractor _checkIsUserAuthorizedInteractor;

  Future<void> _startLogoResizing(Emitter<SplashState> emit) async {
    await Future<void>.delayed(const Duration(milliseconds: 100));
    emit(state.copyWith(logoScaleFactor: 3));
  }

  Future<void> _checkIsUserAuthorized(Emitter<SplashState> emit) async {
    final isUserAuthorized = await _checkIsUserAuthorizedInteractor();
    emit(state.copyWith(isUserAuthorized: isUserAuthorized));
  }
}
