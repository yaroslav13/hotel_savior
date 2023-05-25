part of 'membership_activation_bloc.dart';

@freezed
class MembershipActivationState with _$MembershipActivationState {
  const factory MembershipActivationState({
    @Default(false) bool isAddingCard,
    String? cardNumber,
    String? expireDate,
    String? cvv,
    String? cardHolderName,
    String? errorMessageLocaleKey,
  }) = _MembershipActivationState;
}
