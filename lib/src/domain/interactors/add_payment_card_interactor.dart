import 'package:hotel_savior/src/domain/base/base_interactor.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/payment_card/payment_card.dart';
import 'package:hotel_savior/src/domain/repositories/payment_card_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddPaymentCardInteractor implements BaseInteractor<void, PaymentCard> {
  AddPaymentCardInteractor(this._paymentCardRepository);

  final PaymentCardRepository _paymentCardRepository;

  @override
  Future<void> call(PaymentCard param) =>
      _paymentCardRepository.addPaymentCard(param);
}
