// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membership_activation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MembershipActivationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cardNumber) cardNumberChanged,
    required TResult Function(String expireDate) expireDateChanged,
    required TResult Function(String cvv) cvvChanged,
    required TResult Function(String name) cardHolderNameChanged,
    required TResult Function() submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cardNumber)? cardNumberChanged,
    TResult? Function(String expireDate)? expireDateChanged,
    TResult? Function(String cvv)? cvvChanged,
    TResult? Function(String name)? cardHolderNameChanged,
    TResult? Function()? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cardNumber)? cardNumberChanged,
    TResult Function(String expireDate)? expireDateChanged,
    TResult Function(String cvv)? cvvChanged,
    TResult Function(String name)? cardHolderNameChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardNumberChanged value) cardNumberChanged,
    required TResult Function(_ExpiryDateChanged value) expireDateChanged,
    required TResult Function(_CvvChanged value) cvvChanged,
    required TResult Function(_NameChanged value) cardHolderNameChanged,
    required TResult Function(_SubmitPressed value) submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CardNumberChanged value)? cardNumberChanged,
    TResult? Function(_ExpiryDateChanged value)? expireDateChanged,
    TResult? Function(_CvvChanged value)? cvvChanged,
    TResult? Function(_NameChanged value)? cardHolderNameChanged,
    TResult? Function(_SubmitPressed value)? submitPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardNumberChanged value)? cardNumberChanged,
    TResult Function(_ExpiryDateChanged value)? expireDateChanged,
    TResult Function(_CvvChanged value)? cvvChanged,
    TResult Function(_NameChanged value)? cardHolderNameChanged,
    TResult Function(_SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipActivationEventCopyWith<$Res> {
  factory $MembershipActivationEventCopyWith(MembershipActivationEvent value,
          $Res Function(MembershipActivationEvent) then) =
      _$MembershipActivationEventCopyWithImpl<$Res, MembershipActivationEvent>;
}

/// @nodoc
class _$MembershipActivationEventCopyWithImpl<$Res,
        $Val extends MembershipActivationEvent>
    implements $MembershipActivationEventCopyWith<$Res> {
  _$MembershipActivationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CardNumberChangedCopyWith<$Res> {
  factory _$$_CardNumberChangedCopyWith(_$_CardNumberChanged value,
          $Res Function(_$_CardNumberChanged) then) =
      __$$_CardNumberChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String cardNumber});
}

/// @nodoc
class __$$_CardNumberChangedCopyWithImpl<$Res>
    extends _$MembershipActivationEventCopyWithImpl<$Res, _$_CardNumberChanged>
    implements _$$_CardNumberChangedCopyWith<$Res> {
  __$$_CardNumberChangedCopyWithImpl(
      _$_CardNumberChanged _value, $Res Function(_$_CardNumberChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
  }) {
    return _then(_$_CardNumberChanged(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CardNumberChanged implements _CardNumberChanged {
  const _$_CardNumberChanged({required this.cardNumber});

  @override
  final String cardNumber;

  @override
  String toString() {
    return 'MembershipActivationEvent.cardNumberChanged(cardNumber: $cardNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardNumberChanged &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardNumberChangedCopyWith<_$_CardNumberChanged> get copyWith =>
      __$$_CardNumberChangedCopyWithImpl<_$_CardNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cardNumber) cardNumberChanged,
    required TResult Function(String expireDate) expireDateChanged,
    required TResult Function(String cvv) cvvChanged,
    required TResult Function(String name) cardHolderNameChanged,
    required TResult Function() submitPressed,
  }) {
    return cardNumberChanged(cardNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cardNumber)? cardNumberChanged,
    TResult? Function(String expireDate)? expireDateChanged,
    TResult? Function(String cvv)? cvvChanged,
    TResult? Function(String name)? cardHolderNameChanged,
    TResult? Function()? submitPressed,
  }) {
    return cardNumberChanged?.call(cardNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cardNumber)? cardNumberChanged,
    TResult Function(String expireDate)? expireDateChanged,
    TResult Function(String cvv)? cvvChanged,
    TResult Function(String name)? cardHolderNameChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (cardNumberChanged != null) {
      return cardNumberChanged(cardNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardNumberChanged value) cardNumberChanged,
    required TResult Function(_ExpiryDateChanged value) expireDateChanged,
    required TResult Function(_CvvChanged value) cvvChanged,
    required TResult Function(_NameChanged value) cardHolderNameChanged,
    required TResult Function(_SubmitPressed value) submitPressed,
  }) {
    return cardNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CardNumberChanged value)? cardNumberChanged,
    TResult? Function(_ExpiryDateChanged value)? expireDateChanged,
    TResult? Function(_CvvChanged value)? cvvChanged,
    TResult? Function(_NameChanged value)? cardHolderNameChanged,
    TResult? Function(_SubmitPressed value)? submitPressed,
  }) {
    return cardNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardNumberChanged value)? cardNumberChanged,
    TResult Function(_ExpiryDateChanged value)? expireDateChanged,
    TResult Function(_CvvChanged value)? cvvChanged,
    TResult Function(_NameChanged value)? cardHolderNameChanged,
    TResult Function(_SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (cardNumberChanged != null) {
      return cardNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _CardNumberChanged implements MembershipActivationEvent {
  const factory _CardNumberChanged({required final String cardNumber}) =
      _$_CardNumberChanged;

  String get cardNumber;
  @JsonKey(ignore: true)
  _$$_CardNumberChangedCopyWith<_$_CardNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExpiryDateChangedCopyWith<$Res> {
  factory _$$_ExpiryDateChangedCopyWith(_$_ExpiryDateChanged value,
          $Res Function(_$_ExpiryDateChanged) then) =
      __$$_ExpiryDateChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String expireDate});
}

/// @nodoc
class __$$_ExpiryDateChangedCopyWithImpl<$Res>
    extends _$MembershipActivationEventCopyWithImpl<$Res, _$_ExpiryDateChanged>
    implements _$$_ExpiryDateChangedCopyWith<$Res> {
  __$$_ExpiryDateChangedCopyWithImpl(
      _$_ExpiryDateChanged _value, $Res Function(_$_ExpiryDateChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expireDate = null,
  }) {
    return _then(_$_ExpiryDateChanged(
      expireDate: null == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExpiryDateChanged implements _ExpiryDateChanged {
  const _$_ExpiryDateChanged({required this.expireDate});

  @override
  final String expireDate;

  @override
  String toString() {
    return 'MembershipActivationEvent.expireDateChanged(expireDate: $expireDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpiryDateChanged &&
            (identical(other.expireDate, expireDate) ||
                other.expireDate == expireDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expireDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpiryDateChangedCopyWith<_$_ExpiryDateChanged> get copyWith =>
      __$$_ExpiryDateChangedCopyWithImpl<_$_ExpiryDateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cardNumber) cardNumberChanged,
    required TResult Function(String expireDate) expireDateChanged,
    required TResult Function(String cvv) cvvChanged,
    required TResult Function(String name) cardHolderNameChanged,
    required TResult Function() submitPressed,
  }) {
    return expireDateChanged(expireDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cardNumber)? cardNumberChanged,
    TResult? Function(String expireDate)? expireDateChanged,
    TResult? Function(String cvv)? cvvChanged,
    TResult? Function(String name)? cardHolderNameChanged,
    TResult? Function()? submitPressed,
  }) {
    return expireDateChanged?.call(expireDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cardNumber)? cardNumberChanged,
    TResult Function(String expireDate)? expireDateChanged,
    TResult Function(String cvv)? cvvChanged,
    TResult Function(String name)? cardHolderNameChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (expireDateChanged != null) {
      return expireDateChanged(expireDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardNumberChanged value) cardNumberChanged,
    required TResult Function(_ExpiryDateChanged value) expireDateChanged,
    required TResult Function(_CvvChanged value) cvvChanged,
    required TResult Function(_NameChanged value) cardHolderNameChanged,
    required TResult Function(_SubmitPressed value) submitPressed,
  }) {
    return expireDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CardNumberChanged value)? cardNumberChanged,
    TResult? Function(_ExpiryDateChanged value)? expireDateChanged,
    TResult? Function(_CvvChanged value)? cvvChanged,
    TResult? Function(_NameChanged value)? cardHolderNameChanged,
    TResult? Function(_SubmitPressed value)? submitPressed,
  }) {
    return expireDateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardNumberChanged value)? cardNumberChanged,
    TResult Function(_ExpiryDateChanged value)? expireDateChanged,
    TResult Function(_CvvChanged value)? cvvChanged,
    TResult Function(_NameChanged value)? cardHolderNameChanged,
    TResult Function(_SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (expireDateChanged != null) {
      return expireDateChanged(this);
    }
    return orElse();
  }
}

abstract class _ExpiryDateChanged implements MembershipActivationEvent {
  const factory _ExpiryDateChanged({required final String expireDate}) =
      _$_ExpiryDateChanged;

  String get expireDate;
  @JsonKey(ignore: true)
  _$$_ExpiryDateChangedCopyWith<_$_ExpiryDateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CvvChangedCopyWith<$Res> {
  factory _$$_CvvChangedCopyWith(
          _$_CvvChanged value, $Res Function(_$_CvvChanged) then) =
      __$$_CvvChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String cvv});
}

/// @nodoc
class __$$_CvvChangedCopyWithImpl<$Res>
    extends _$MembershipActivationEventCopyWithImpl<$Res, _$_CvvChanged>
    implements _$$_CvvChangedCopyWith<$Res> {
  __$$_CvvChangedCopyWithImpl(
      _$_CvvChanged _value, $Res Function(_$_CvvChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cvv = null,
  }) {
    return _then(_$_CvvChanged(
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CvvChanged implements _CvvChanged {
  const _$_CvvChanged({required this.cvv});

  @override
  final String cvv;

  @override
  String toString() {
    return 'MembershipActivationEvent.cvvChanged(cvv: $cvv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CvvChanged &&
            (identical(other.cvv, cvv) || other.cvv == cvv));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cvv);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CvvChangedCopyWith<_$_CvvChanged> get copyWith =>
      __$$_CvvChangedCopyWithImpl<_$_CvvChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cardNumber) cardNumberChanged,
    required TResult Function(String expireDate) expireDateChanged,
    required TResult Function(String cvv) cvvChanged,
    required TResult Function(String name) cardHolderNameChanged,
    required TResult Function() submitPressed,
  }) {
    return cvvChanged(cvv);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cardNumber)? cardNumberChanged,
    TResult? Function(String expireDate)? expireDateChanged,
    TResult? Function(String cvv)? cvvChanged,
    TResult? Function(String name)? cardHolderNameChanged,
    TResult? Function()? submitPressed,
  }) {
    return cvvChanged?.call(cvv);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cardNumber)? cardNumberChanged,
    TResult Function(String expireDate)? expireDateChanged,
    TResult Function(String cvv)? cvvChanged,
    TResult Function(String name)? cardHolderNameChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (cvvChanged != null) {
      return cvvChanged(cvv);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardNumberChanged value) cardNumberChanged,
    required TResult Function(_ExpiryDateChanged value) expireDateChanged,
    required TResult Function(_CvvChanged value) cvvChanged,
    required TResult Function(_NameChanged value) cardHolderNameChanged,
    required TResult Function(_SubmitPressed value) submitPressed,
  }) {
    return cvvChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CardNumberChanged value)? cardNumberChanged,
    TResult? Function(_ExpiryDateChanged value)? expireDateChanged,
    TResult? Function(_CvvChanged value)? cvvChanged,
    TResult? Function(_NameChanged value)? cardHolderNameChanged,
    TResult? Function(_SubmitPressed value)? submitPressed,
  }) {
    return cvvChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardNumberChanged value)? cardNumberChanged,
    TResult Function(_ExpiryDateChanged value)? expireDateChanged,
    TResult Function(_CvvChanged value)? cvvChanged,
    TResult Function(_NameChanged value)? cardHolderNameChanged,
    TResult Function(_SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (cvvChanged != null) {
      return cvvChanged(this);
    }
    return orElse();
  }
}

abstract class _CvvChanged implements MembershipActivationEvent {
  const factory _CvvChanged({required final String cvv}) = _$_CvvChanged;

  String get cvv;
  @JsonKey(ignore: true)
  _$$_CvvChangedCopyWith<_$_CvvChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$MembershipActivationEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_NameChanged(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'MembershipActivationEvent.cardHolderNameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cardNumber) cardNumberChanged,
    required TResult Function(String expireDate) expireDateChanged,
    required TResult Function(String cvv) cvvChanged,
    required TResult Function(String name) cardHolderNameChanged,
    required TResult Function() submitPressed,
  }) {
    return cardHolderNameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cardNumber)? cardNumberChanged,
    TResult? Function(String expireDate)? expireDateChanged,
    TResult? Function(String cvv)? cvvChanged,
    TResult? Function(String name)? cardHolderNameChanged,
    TResult? Function()? submitPressed,
  }) {
    return cardHolderNameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cardNumber)? cardNumberChanged,
    TResult Function(String expireDate)? expireDateChanged,
    TResult Function(String cvv)? cvvChanged,
    TResult Function(String name)? cardHolderNameChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (cardHolderNameChanged != null) {
      return cardHolderNameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardNumberChanged value) cardNumberChanged,
    required TResult Function(_ExpiryDateChanged value) expireDateChanged,
    required TResult Function(_CvvChanged value) cvvChanged,
    required TResult Function(_NameChanged value) cardHolderNameChanged,
    required TResult Function(_SubmitPressed value) submitPressed,
  }) {
    return cardHolderNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CardNumberChanged value)? cardNumberChanged,
    TResult? Function(_ExpiryDateChanged value)? expireDateChanged,
    TResult? Function(_CvvChanged value)? cvvChanged,
    TResult? Function(_NameChanged value)? cardHolderNameChanged,
    TResult? Function(_SubmitPressed value)? submitPressed,
  }) {
    return cardHolderNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardNumberChanged value)? cardNumberChanged,
    TResult Function(_ExpiryDateChanged value)? expireDateChanged,
    TResult Function(_CvvChanged value)? cvvChanged,
    TResult Function(_NameChanged value)? cardHolderNameChanged,
    TResult Function(_SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (cardHolderNameChanged != null) {
      return cardHolderNameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements MembershipActivationEvent {
  const factory _NameChanged({required final String name}) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitPressedCopyWith<$Res> {
  factory _$$_SubmitPressedCopyWith(
          _$_SubmitPressed value, $Res Function(_$_SubmitPressed) then) =
      __$$_SubmitPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitPressedCopyWithImpl<$Res>
    extends _$MembershipActivationEventCopyWithImpl<$Res, _$_SubmitPressed>
    implements _$$_SubmitPressedCopyWith<$Res> {
  __$$_SubmitPressedCopyWithImpl(
      _$_SubmitPressed _value, $Res Function(_$_SubmitPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SubmitPressed implements _SubmitPressed {
  const _$_SubmitPressed();

  @override
  String toString() {
    return 'MembershipActivationEvent.submitPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SubmitPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cardNumber) cardNumberChanged,
    required TResult Function(String expireDate) expireDateChanged,
    required TResult Function(String cvv) cvvChanged,
    required TResult Function(String name) cardHolderNameChanged,
    required TResult Function() submitPressed,
  }) {
    return submitPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cardNumber)? cardNumberChanged,
    TResult? Function(String expireDate)? expireDateChanged,
    TResult? Function(String cvv)? cvvChanged,
    TResult? Function(String name)? cardHolderNameChanged,
    TResult? Function()? submitPressed,
  }) {
    return submitPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cardNumber)? cardNumberChanged,
    TResult Function(String expireDate)? expireDateChanged,
    TResult Function(String cvv)? cvvChanged,
    TResult Function(String name)? cardHolderNameChanged,
    TResult Function()? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardNumberChanged value) cardNumberChanged,
    required TResult Function(_ExpiryDateChanged value) expireDateChanged,
    required TResult Function(_CvvChanged value) cvvChanged,
    required TResult Function(_NameChanged value) cardHolderNameChanged,
    required TResult Function(_SubmitPressed value) submitPressed,
  }) {
    return submitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CardNumberChanged value)? cardNumberChanged,
    TResult? Function(_ExpiryDateChanged value)? expireDateChanged,
    TResult? Function(_CvvChanged value)? cvvChanged,
    TResult? Function(_NameChanged value)? cardHolderNameChanged,
    TResult? Function(_SubmitPressed value)? submitPressed,
  }) {
    return submitPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardNumberChanged value)? cardNumberChanged,
    TResult Function(_ExpiryDateChanged value)? expireDateChanged,
    TResult Function(_CvvChanged value)? cvvChanged,
    TResult Function(_NameChanged value)? cardHolderNameChanged,
    TResult Function(_SubmitPressed value)? submitPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(this);
    }
    return orElse();
  }
}

abstract class _SubmitPressed implements MembershipActivationEvent {
  const factory _SubmitPressed() = _$_SubmitPressed;
}

/// @nodoc
mixin _$MembershipActivationState {
  bool get isAddingCard => throw _privateConstructorUsedError;
  String? get cardNumber => throw _privateConstructorUsedError;
  String? get expireDate => throw _privateConstructorUsedError;
  String? get cvv => throw _privateConstructorUsedError;
  String? get cardHolderName => throw _privateConstructorUsedError;
  String? get errorMessageLocaleKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MembershipActivationStateCopyWith<MembershipActivationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipActivationStateCopyWith<$Res> {
  factory $MembershipActivationStateCopyWith(MembershipActivationState value,
          $Res Function(MembershipActivationState) then) =
      _$MembershipActivationStateCopyWithImpl<$Res, MembershipActivationState>;
  @useResult
  $Res call(
      {bool isAddingCard,
      String? cardNumber,
      String? expireDate,
      String? cvv,
      String? cardHolderName,
      String? errorMessageLocaleKey});
}

/// @nodoc
class _$MembershipActivationStateCopyWithImpl<$Res,
        $Val extends MembershipActivationState>
    implements $MembershipActivationStateCopyWith<$Res> {
  _$MembershipActivationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAddingCard = null,
    Object? cardNumber = freezed,
    Object? expireDate = freezed,
    Object? cvv = freezed,
    Object? cardHolderName = freezed,
    Object? errorMessageLocaleKey = freezed,
  }) {
    return _then(_value.copyWith(
      isAddingCard: null == isAddingCard
          ? _value.isAddingCard
          : isAddingCard // ignore: cast_nullable_to_non_nullable
              as bool,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      cardHolderName: freezed == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessageLocaleKey: freezed == errorMessageLocaleKey
          ? _value.errorMessageLocaleKey
          : errorMessageLocaleKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MembershipActivationStateCopyWith<$Res>
    implements $MembershipActivationStateCopyWith<$Res> {
  factory _$$_MembershipActivationStateCopyWith(
          _$_MembershipActivationState value,
          $Res Function(_$_MembershipActivationState) then) =
      __$$_MembershipActivationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isAddingCard,
      String? cardNumber,
      String? expireDate,
      String? cvv,
      String? cardHolderName,
      String? errorMessageLocaleKey});
}

/// @nodoc
class __$$_MembershipActivationStateCopyWithImpl<$Res>
    extends _$MembershipActivationStateCopyWithImpl<$Res,
        _$_MembershipActivationState>
    implements _$$_MembershipActivationStateCopyWith<$Res> {
  __$$_MembershipActivationStateCopyWithImpl(
      _$_MembershipActivationState _value,
      $Res Function(_$_MembershipActivationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAddingCard = null,
    Object? cardNumber = freezed,
    Object? expireDate = freezed,
    Object? cvv = freezed,
    Object? cardHolderName = freezed,
    Object? errorMessageLocaleKey = freezed,
  }) {
    return _then(_$_MembershipActivationState(
      isAddingCard: null == isAddingCard
          ? _value.isAddingCard
          : isAddingCard // ignore: cast_nullable_to_non_nullable
              as bool,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      cardHolderName: freezed == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessageLocaleKey: freezed == errorMessageLocaleKey
          ? _value.errorMessageLocaleKey
          : errorMessageLocaleKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MembershipActivationState implements _MembershipActivationState {
  const _$_MembershipActivationState(
      {this.isAddingCard = false,
      this.cardNumber,
      this.expireDate,
      this.cvv,
      this.cardHolderName,
      this.errorMessageLocaleKey});

  @override
  @JsonKey()
  final bool isAddingCard;
  @override
  final String? cardNumber;
  @override
  final String? expireDate;
  @override
  final String? cvv;
  @override
  final String? cardHolderName;
  @override
  final String? errorMessageLocaleKey;

  @override
  String toString() {
    return 'MembershipActivationState(isAddingCard: $isAddingCard, cardNumber: $cardNumber, expireDate: $expireDate, cvv: $cvv, cardHolderName: $cardHolderName, errorMessageLocaleKey: $errorMessageLocaleKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MembershipActivationState &&
            (identical(other.isAddingCard, isAddingCard) ||
                other.isAddingCard == isAddingCard) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expireDate, expireDate) ||
                other.expireDate == expireDate) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.cardHolderName, cardHolderName) ||
                other.cardHolderName == cardHolderName) &&
            (identical(other.errorMessageLocaleKey, errorMessageLocaleKey) ||
                other.errorMessageLocaleKey == errorMessageLocaleKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAddingCard, cardNumber,
      expireDate, cvv, cardHolderName, errorMessageLocaleKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembershipActivationStateCopyWith<_$_MembershipActivationState>
      get copyWith => __$$_MembershipActivationStateCopyWithImpl<
          _$_MembershipActivationState>(this, _$identity);
}

abstract class _MembershipActivationState implements MembershipActivationState {
  const factory _MembershipActivationState(
      {final bool isAddingCard,
      final String? cardNumber,
      final String? expireDate,
      final String? cvv,
      final String? cardHolderName,
      final String? errorMessageLocaleKey}) = _$_MembershipActivationState;

  @override
  bool get isAddingCard;
  @override
  String? get cardNumber;
  @override
  String? get expireDate;
  @override
  String? get cvv;
  @override
  String? get cardHolderName;
  @override
  String? get errorMessageLocaleKey;
  @override
  @JsonKey(ignore: true)
  _$$_MembershipActivationStateCopyWith<_$_MembershipActivationState>
      get copyWith => throw _privateConstructorUsedError;
}
