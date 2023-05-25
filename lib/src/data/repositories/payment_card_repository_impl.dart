import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotel_savior/src/data/api/payment_cards_api.dart';
import 'package:hotel_savior/src/domain/business_domain/entities/payment_card/payment_card.dart';
import 'package:hotel_savior/src/domain/business_domain/exceptions/unknown_exception.dart';
import 'package:hotel_savior/src/domain/repositories/auth_repository.dart';
import 'package:hotel_savior/src/domain/repositories/payment_card_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PaymentCardRepository)
class PaymentCardRepositoryImpl implements PaymentCardRepository {
  PaymentCardRepositoryImpl(
    this._authRepository,
    this._paymentCardsApi,
  );

  final AuthRepository _authRepository;
  final PaymentCardsApi _paymentCardsApi;

  @override
  Future<void> addPaymentCard(PaymentCard paymentCard) async {
    try {
      final currentUserId = _authRepository.authorizedUserId;

      await _paymentCardsApi.createPaymentCard(
        documentId: currentUserId,
        paymentCard: paymentCard.toJson(),
      );
    } on FirebaseException {
      throw const UnknownException();
    }
  }
}
