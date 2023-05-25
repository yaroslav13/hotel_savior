// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QrCodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() qrCodeOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? qrCodeOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? qrCodeOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QrCodeOpened value) qrCodeOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QrCodeOpened value)? qrCodeOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrCodeOpened value)? qrCodeOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCodeEventCopyWith<$Res> {
  factory $QrCodeEventCopyWith(
          QrCodeEvent value, $Res Function(QrCodeEvent) then) =
      _$QrCodeEventCopyWithImpl<$Res, QrCodeEvent>;
}

/// @nodoc
class _$QrCodeEventCopyWithImpl<$Res, $Val extends QrCodeEvent>
    implements $QrCodeEventCopyWith<$Res> {
  _$QrCodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_QrCodeOpenedCopyWith<$Res> {
  factory _$$_QrCodeOpenedCopyWith(
          _$_QrCodeOpened value, $Res Function(_$_QrCodeOpened) then) =
      __$$_QrCodeOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QrCodeOpenedCopyWithImpl<$Res>
    extends _$QrCodeEventCopyWithImpl<$Res, _$_QrCodeOpened>
    implements _$$_QrCodeOpenedCopyWith<$Res> {
  __$$_QrCodeOpenedCopyWithImpl(
      _$_QrCodeOpened _value, $Res Function(_$_QrCodeOpened) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_QrCodeOpened implements _QrCodeOpened {
  const _$_QrCodeOpened();

  @override
  String toString() {
    return 'QrCodeEvent.qrCodeOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_QrCodeOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() qrCodeOpened,
  }) {
    return qrCodeOpened();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? qrCodeOpened,
  }) {
    return qrCodeOpened?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? qrCodeOpened,
    required TResult orElse(),
  }) {
    if (qrCodeOpened != null) {
      return qrCodeOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QrCodeOpened value) qrCodeOpened,
  }) {
    return qrCodeOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QrCodeOpened value)? qrCodeOpened,
  }) {
    return qrCodeOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrCodeOpened value)? qrCodeOpened,
    required TResult orElse(),
  }) {
    if (qrCodeOpened != null) {
      return qrCodeOpened(this);
    }
    return orElse();
  }
}

abstract class _QrCodeOpened implements QrCodeEvent {
  const factory _QrCodeOpened() = _$_QrCodeOpened;
}

/// @nodoc
mixin _$QrCodeState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get qrCodeData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QrCodeStateCopyWith<QrCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCodeStateCopyWith<$Res> {
  factory $QrCodeStateCopyWith(
          QrCodeState value, $Res Function(QrCodeState) then) =
      _$QrCodeStateCopyWithImpl<$Res, QrCodeState>;
  @useResult
  $Res call({bool isLoading, String qrCodeData});
}

/// @nodoc
class _$QrCodeStateCopyWithImpl<$Res, $Val extends QrCodeState>
    implements $QrCodeStateCopyWith<$Res> {
  _$QrCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? qrCodeData = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      qrCodeData: null == qrCodeData
          ? _value.qrCodeData
          : qrCodeData // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QrCodeStateCopyWith<$Res>
    implements $QrCodeStateCopyWith<$Res> {
  factory _$$_QrCodeStateCopyWith(
          _$_QrCodeState value, $Res Function(_$_QrCodeState) then) =
      __$$_QrCodeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String qrCodeData});
}

/// @nodoc
class __$$_QrCodeStateCopyWithImpl<$Res>
    extends _$QrCodeStateCopyWithImpl<$Res, _$_QrCodeState>
    implements _$$_QrCodeStateCopyWith<$Res> {
  __$$_QrCodeStateCopyWithImpl(
      _$_QrCodeState _value, $Res Function(_$_QrCodeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? qrCodeData = null,
  }) {
    return _then(_$_QrCodeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      qrCodeData: null == qrCodeData
          ? _value.qrCodeData
          : qrCodeData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QrCodeState implements _QrCodeState {
  const _$_QrCodeState({this.isLoading = false, this.qrCodeData = ''});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String qrCodeData;

  @override
  String toString() {
    return 'QrCodeState(isLoading: $isLoading, qrCodeData: $qrCodeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QrCodeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.qrCodeData, qrCodeData) ||
                other.qrCodeData == qrCodeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, qrCodeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QrCodeStateCopyWith<_$_QrCodeState> get copyWith =>
      __$$_QrCodeStateCopyWithImpl<_$_QrCodeState>(this, _$identity);
}

abstract class _QrCodeState implements QrCodeState {
  const factory _QrCodeState({final bool isLoading, final String qrCodeData}) =
      _$_QrCodeState;

  @override
  bool get isLoading;
  @override
  String get qrCodeData;
  @override
  @JsonKey(ignore: true)
  _$$_QrCodeStateCopyWith<_$_QrCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
