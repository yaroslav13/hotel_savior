// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logInButtonPressed,
    required TResult Function(String email, String password) credentialsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logInButtonPressed,
    TResult? Function(String email, String password)? credentialsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logInButtonPressed,
    TResult Function(String email, String password)? credentialsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInButtonPressed value) logInButtonPressed,
    required TResult Function(_CredentialsChanged value) credentialsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInButtonPressed value)? logInButtonPressed,
    TResult? Function(_CredentialsChanged value)? credentialsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInButtonPressed value)? logInButtonPressed,
    TResult Function(_CredentialsChanged value)? credentialsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogInButtonPressedCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$_LogInButtonPressedCopyWith(_$_LogInButtonPressed value,
          $Res Function(_$_LogInButtonPressed) then) =
      __$$_LogInButtonPressedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LogInButtonPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LogInButtonPressed>
    implements _$$_LogInButtonPressedCopyWith<$Res> {
  __$$_LogInButtonPressedCopyWithImpl(
      _$_LogInButtonPressed _value, $Res Function(_$_LogInButtonPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LogInButtonPressed(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LogInButtonPressed implements _LogInButtonPressed {
  const _$_LogInButtonPressed({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.logInButtonPressed(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogInButtonPressed &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogInButtonPressedCopyWith<_$_LogInButtonPressed> get copyWith =>
      __$$_LogInButtonPressedCopyWithImpl<_$_LogInButtonPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logInButtonPressed,
    required TResult Function(String email, String password) credentialsChanged,
  }) {
    return logInButtonPressed(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logInButtonPressed,
    TResult? Function(String email, String password)? credentialsChanged,
  }) {
    return logInButtonPressed?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logInButtonPressed,
    TResult Function(String email, String password)? credentialsChanged,
    required TResult orElse(),
  }) {
    if (logInButtonPressed != null) {
      return logInButtonPressed(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInButtonPressed value) logInButtonPressed,
    required TResult Function(_CredentialsChanged value) credentialsChanged,
  }) {
    return logInButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInButtonPressed value)? logInButtonPressed,
    TResult? Function(_CredentialsChanged value)? credentialsChanged,
  }) {
    return logInButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInButtonPressed value)? logInButtonPressed,
    TResult Function(_CredentialsChanged value)? credentialsChanged,
    required TResult orElse(),
  }) {
    if (logInButtonPressed != null) {
      return logInButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _LogInButtonPressed implements AuthEvent {
  const factory _LogInButtonPressed(
      {required final String email,
      required final String password}) = _$_LogInButtonPressed;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LogInButtonPressedCopyWith<_$_LogInButtonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CredentialsChangedCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$_CredentialsChangedCopyWith(_$_CredentialsChanged value,
          $Res Function(_$_CredentialsChanged) then) =
      __$$_CredentialsChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_CredentialsChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CredentialsChanged>
    implements _$$_CredentialsChangedCopyWith<$Res> {
  __$$_CredentialsChangedCopyWithImpl(
      _$_CredentialsChanged _value, $Res Function(_$_CredentialsChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_CredentialsChanged(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CredentialsChanged implements _CredentialsChanged {
  const _$_CredentialsChanged({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.credentialsChanged(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CredentialsChanged &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CredentialsChangedCopyWith<_$_CredentialsChanged> get copyWith =>
      __$$_CredentialsChangedCopyWithImpl<_$_CredentialsChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logInButtonPressed,
    required TResult Function(String email, String password) credentialsChanged,
  }) {
    return credentialsChanged(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logInButtonPressed,
    TResult? Function(String email, String password)? credentialsChanged,
  }) {
    return credentialsChanged?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logInButtonPressed,
    TResult Function(String email, String password)? credentialsChanged,
    required TResult orElse(),
  }) {
    if (credentialsChanged != null) {
      return credentialsChanged(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogInButtonPressed value) logInButtonPressed,
    required TResult Function(_CredentialsChanged value) credentialsChanged,
  }) {
    return credentialsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogInButtonPressed value)? logInButtonPressed,
    TResult? Function(_CredentialsChanged value)? credentialsChanged,
  }) {
    return credentialsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogInButtonPressed value)? logInButtonPressed,
    TResult Function(_CredentialsChanged value)? credentialsChanged,
    required TResult orElse(),
  }) {
    if (credentialsChanged != null) {
      return credentialsChanged(this);
    }
    return orElse();
  }
}

abstract class _CredentialsChanged implements AuthEvent {
  const factory _CredentialsChanged(
      {required final String email,
      required final String password}) = _$_CredentialsChanged;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_CredentialsChangedCopyWith<_$_CredentialsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  bool get isAuthProcessing => throw _privateConstructorUsedError;
  bool get isAuthSuccess => throw _privateConstructorUsedError;
  bool get isCredentialsEmpty => throw _privateConstructorUsedError;
  AuthErrorReason? get errorReason => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isAuthProcessing,
      bool isAuthSuccess,
      bool isCredentialsEmpty,
      AuthErrorReason? errorReason});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthProcessing = null,
    Object? isAuthSuccess = null,
    Object? isCredentialsEmpty = null,
    Object? errorReason = freezed,
  }) {
    return _then(_value.copyWith(
      isAuthProcessing: null == isAuthProcessing
          ? _value.isAuthProcessing
          : isAuthProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthSuccess: null == isAuthSuccess
          ? _value.isAuthSuccess
          : isAuthSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isCredentialsEmpty: null == isCredentialsEmpty
          ? _value.isCredentialsEmpty
          : isCredentialsEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      errorReason: freezed == errorReason
          ? _value.errorReason
          : errorReason // ignore: cast_nullable_to_non_nullable
              as AuthErrorReason?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isAuthProcessing,
      bool isAuthSuccess,
      bool isCredentialsEmpty,
      AuthErrorReason? errorReason});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthProcessing = null,
    Object? isAuthSuccess = null,
    Object? isCredentialsEmpty = null,
    Object? errorReason = freezed,
  }) {
    return _then(_$_AuthState(
      isAuthProcessing: null == isAuthProcessing
          ? _value.isAuthProcessing
          : isAuthProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      isAuthSuccess: null == isAuthSuccess
          ? _value.isAuthSuccess
          : isAuthSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isCredentialsEmpty: null == isCredentialsEmpty
          ? _value.isCredentialsEmpty
          : isCredentialsEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      errorReason: freezed == errorReason
          ? _value.errorReason
          : errorReason // ignore: cast_nullable_to_non_nullable
              as AuthErrorReason?,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {this.isAuthProcessing = false,
      this.isAuthSuccess = false,
      this.isCredentialsEmpty = true,
      this.errorReason});

  @override
  @JsonKey()
  final bool isAuthProcessing;
  @override
  @JsonKey()
  final bool isAuthSuccess;
  @override
  @JsonKey()
  final bool isCredentialsEmpty;
  @override
  final AuthErrorReason? errorReason;

  @override
  String toString() {
    return 'AuthState(isAuthProcessing: $isAuthProcessing, isAuthSuccess: $isAuthSuccess, isCredentialsEmpty: $isCredentialsEmpty, errorReason: $errorReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isAuthProcessing, isAuthProcessing) ||
                other.isAuthProcessing == isAuthProcessing) &&
            (identical(other.isAuthSuccess, isAuthSuccess) ||
                other.isAuthSuccess == isAuthSuccess) &&
            (identical(other.isCredentialsEmpty, isCredentialsEmpty) ||
                other.isCredentialsEmpty == isCredentialsEmpty) &&
            (identical(other.errorReason, errorReason) ||
                other.errorReason == errorReason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAuthProcessing, isAuthSuccess,
      isCredentialsEmpty, errorReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final bool isAuthProcessing,
      final bool isAuthSuccess,
      final bool isCredentialsEmpty,
      final AuthErrorReason? errorReason}) = _$_AuthState;

  @override
  bool get isAuthProcessing;
  @override
  bool get isAuthSuccess;
  @override
  bool get isCredentialsEmpty;
  @override
  AuthErrorReason? get errorReason;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
