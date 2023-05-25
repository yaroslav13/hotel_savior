part of 'membership_activation_bloc.dart';

@freezed
class MembershipActivationEvent with _$MembershipActivationEvent {
  const factory MembershipActivationEvent.cardNumberChanged({
    required String cardNumber,
  }) = _CardNumberChanged;
  const factory MembershipActivationEvent.expireDateChanged({
    required String expireDate,
  }) = _ExpiryDateChanged;
  const factory MembershipActivationEvent.cvvChanged({
    required String cvv,
  }) = _CvvChanged;
  const factory MembershipActivationEvent.cardHolderNameChanged({
    required String name,
  }) = _NameChanged;
  const factory MembershipActivationEvent.submitPressed() = _SubmitPressed;
}
