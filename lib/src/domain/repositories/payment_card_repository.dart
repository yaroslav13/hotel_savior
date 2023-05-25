import 'package:hotel_savior/src/domain/business_domain/entities/payment_card/payment_card.dart';

abstract interface class PaymentCardRepository {
  Future<void> addPaymentCard(PaymentCard paymentCard);
}
