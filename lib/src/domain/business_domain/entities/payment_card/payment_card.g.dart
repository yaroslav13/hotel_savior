// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentCard _$$_PaymentCardFromJson(Map<String, dynamic> json) =>
    _$_PaymentCard(
      cardNumber: json['cardNumber'] as String,
      expireDate: DateTime.parse(json['expireDate'] as String),
      cvv: json['cvv'] as String,
      cardHolderName: json['cardHolderName'] as String,
    );

Map<String, dynamic> _$$_PaymentCardToJson(_$_PaymentCard instance) =>
    <String, dynamic>{
      'cardNumber': instance.cardNumber,
      'expireDate': instance.expireDate.toIso8601String(),
      'cvv': instance.cvv,
      'cardHolderName': instance.cardHolderName,
    };
