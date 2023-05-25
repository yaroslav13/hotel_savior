import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/payment_card/payment_card.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/unknown_exception.dart';
import 'package:hotel_savior/src/domain/interactors/add_payment_card_interactor.dart';
import 'package:hotel_savior/src/features/localization/locale_keys.g.dart';
import 'package:hotel_savior/src/features/utils/date_formatter_utils.dart';
import 'package:injectable/injectable.dart';

part 'membership_activation_event.dart';
part 'membership_activation_state.dart';
part 'membership_activation_bloc.freezed.dart';

@injectable
class MembershipActivationBloc
    extends Bloc<MembershipActivationEvent, MembershipActivationState> {
  MembershipActivationBloc(
    this._addPaymentCardInteractor,
    this._dateFormatterUtils,
  ) : super(const MembershipActivationState()) {
    on<_CardNumberChanged>((event, emit) {
      emit(state.copyWith(cardNumber: event.cardNumber.trim()));
    });
    on<_ExpiryDateChanged>((event, emit) {
      emit(state.copyWith(expireDate: event.expireDate.trim()));
    });
    on<_CvvChanged>((event, emit) {
      emit(state.copyWith(cvv: event.cvv.trim()));
    });
    on<_NameChanged>((event, emit) {
      emit(state.copyWith(cardHolderName: event.name.trim()));
    });
    on<_SubmitPressed>(_onSubmitPressed);
  }

  final DateFormatterUtils _dateFormatterUtils;
  final AddPaymentCardInteractor _addPaymentCardInteractor;

  Future<void> _onSubmitPressed(
    _SubmitPressed event,
    Emitter<MembershipActivationState> emit,
  ) async {
    try {
      emit(state.copyWith(isAddingCard: true));
      await _addPaymentCardInteractor(
        PaymentCard(
          //ignore: avoid-non-null-assertion
          cardNumber: state.cardNumber!,
          expireDate: _dateFormatterUtils.parse(
            //ignore: avoid-non-null-assertion
            state.expireDate!,
            format: DateFormats.mMyyyy,
          ),
          //ignore: avoid-non-null-assertion
          cvv: state.cvv!,
          //ignore: avoid-non-null-assertion
          cardHolderName: state.cardHolderName!,
        ),
      );

      emit(state.copyWith(isAddingCard: false));
    } on UnknownException {
      emit(
        state.copyWith(
          isAddingCard: false,
          errorMessageLocaleKey: LocaleKeys.somethingWentWrong,
        ),
      );
    }
  }
}
