part of 'qr_code_bloc.dart';

@freezed
class QrCodeEvent with _$QrCodeEvent {
  const factory QrCodeEvent.qrCodeOpened() = _QrCodeOpened;
}
