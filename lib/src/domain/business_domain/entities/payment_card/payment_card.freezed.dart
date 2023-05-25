// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentCard _$PaymentCardFromJson(Map<String, dynamic> json) {
  return _PaymentCard.fromJson(json);
}

/// @nodoc
mixin _$PaymentCard {
  String get cardNumber => throw _privateConstructorUsedError;
  DateTime get expireDate => throw _privateConstructorUsedError;
  String get cvv => throw _privateConstructorUsedError;
  String get cardHolderName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCardCopyWith<PaymentCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCardCopyWith<$Res> {
  factory $PaymentCardCopyWith(
          PaymentCard value, $Res Function(PaymentCard) then) =
      _$PaymentCardCopyWithImpl<$Res, PaymentCard>;
  @useResult
  $Res call(
      {String cardNumber,
      DateTime expireDate,
      String cvv,
      String cardHolderName});
}

/// @nodoc
class _$PaymentCardCopyWithImpl<$Res, $Val extends PaymentCard>
    implements $PaymentCardCopyWith<$Res> {
  _$PaymentCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? expireDate = null,
    Object? cvv = null,
    Object? cardHolderName = null,
  }) {
    return _then(_value.copyWith(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expireDate: null == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentCardCopyWith<$Res>
    implements $PaymentCardCopyWith<$Res> {
  factory _$$_PaymentCardCopyWith(
          _$_PaymentCard value, $Res Function(_$_PaymentCard) then) =
      __$$_PaymentCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cardNumber,
      DateTime expireDate,
      String cvv,
      String cardHolderName});
}

/// @nodoc
class __$$_PaymentCardCopyWithImpl<$Res>
    extends _$PaymentCardCopyWithImpl<$Res, _$_PaymentCard>
    implements _$$_PaymentCardCopyWith<$Res> {
  __$$_PaymentCardCopyWithImpl(
      _$_PaymentCard _value, $Res Function(_$_PaymentCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? expireDate = null,
    Object? cvv = null,
    Object? cardHolderName = null,
  }) {
    return _then(_$_PaymentCard(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expireDate: null == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentCard implements _PaymentCard {
  const _$_PaymentCard(
      {required this.cardNumber,
      required this.expireDate,
      required this.cvv,
      required this.cardHolderName});

  factory _$_PaymentCard.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentCardFromJson(json);

  @override
  final String cardNumber;
  @override
  final DateTime expireDate;
  @override
  final String cvv;
  @override
  final String cardHolderName;

  @override
  String toString() {
    return 'PaymentCard(cardNumber: $cardNumber, expireDate: $expireDate, cvv: $cvv, cardHolderName: $cardHolderName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentCard &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expireDate, expireDate) ||
                other.expireDate == expireDate) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.cardHolderName, cardHolderName) ||
                other.cardHolderName == cardHolderName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cardNumber, expireDate, cvv, cardHolderName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentCardCopyWith<_$_PaymentCard> get copyWith =>
      __$$_PaymentCardCopyWithImpl<_$_PaymentCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentCardToJson(
      this,
    );
  }
}

abstract class _PaymentCard implements PaymentCard {
  const factory _PaymentCard(
      {required final String cardNumber,
      required final DateTime expireDate,
      required final String cvv,
      required final String cardHolderName}) = _$_PaymentCard;

  factory _PaymentCard.fromJson(Map<String, dynamic> json) =
      _$_PaymentCard.fromJson;

  @override
  String get cardNumber;
  @override
  DateTime get expireDate;
  @override
  String get cvv;
  @override
  String get cardHolderName;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentCardCopyWith<_$_PaymentCard> get copyWith =>
      throw _privateConstructorUsedError;
}
