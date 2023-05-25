import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

const _paymentCardsCollectionPath = 'payment_cards';

@injectable
class PaymentCardsApi {
  PaymentCardsApi(this._firebaseFirestore);

  final FirebaseFirestore _firebaseFirestore;

  Future<void> createPaymentCard({
    required String documentId,
    required Map<String, dynamic> paymentCard,
  }) async {
    await _firebaseFirestore
        .collection(_paymentCardsCollectionPath)
        .doc(documentId)
        .set(paymentCard);
  }
}
