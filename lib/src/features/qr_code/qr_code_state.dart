part of 'qr_code_bloc.dart';

@freezed
class QrCodeState with _$QrCodeState {
  const factory QrCodeState({
    @Default(false) bool isLoading,
    @Default('') String qrCodeData,
  }) = _QrCodeState;
}
