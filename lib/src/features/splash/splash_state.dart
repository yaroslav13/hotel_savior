part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    @Default(1) double logoScaleFactor,
    bool? isUserAuthorized,
}) = _SplashState;
}
