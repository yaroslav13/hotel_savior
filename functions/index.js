const functions = require("firebase-functions");

const admin = require("firebase-admin");

admin.initializeApp({
  credential: admin.credential.applicationDefault(),
});

const firestoreTrigger = functions.firestore;
const userRef = firestoreTrigger.document("users/{userId}");
exports.onNewUser = userRef.onCreate((snap, _) => {
  const currentUserId = snap.id;

  const tokensCollection = admin.firestore().collection("device_tokens");
  const currentUserTokenDoc = tokensCollection.doc(currentUserId);
  return currentUserTokenDoc.get().then((doc) => {
    const currentUserToken = doc.data().token;
    admin.messaging().send({
      token: currentUserToken,
      notification: {
        "title": "Welcome to the Hotel Savior! app",
        "body": "You can find the best hotels in the world here!",
      },
    });
  });
});

const paymentCardRef = firestoreTrigger.document("payment_cards/{id}");
exports.onPaymentCardAdded = paymentCardRef.onCreate((snap, _) => {
  const currentUserId = snap.id;

  const tokensCollection = admin.firestore().collection("device_tokens");
  const currentUserTokenDoc = tokensCollection.doc(currentUserId);

  const membershipColl = admin.firestore().collection("membership_status");
  const membershipStatusDoc = membershipColl.doc(currentUserId);

  membershipStatusDoc.update({
    "membershipStatus": "active",
  });

  return currentUserTokenDoc.get().then((doc) => {
    const currentUserToken = doc.data().token;
    admin.messaging().send({
      token: currentUserToken,
      notification: {
        "title": "Payment card added",
        "body": "Your membership is now active!",
      },
    });
  });
});
