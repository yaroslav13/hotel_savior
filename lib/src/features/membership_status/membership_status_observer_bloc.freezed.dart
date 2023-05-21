// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membership_status_observer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MembershipStatusObserverEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppOpened value) appOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppOpened value)? appOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppOpened value)? appOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipStatusObserverEventCopyWith<$Res> {
  factory $MembershipStatusObserverEventCopyWith(
          MembershipStatusObserverEvent value,
          $Res Function(MembershipStatusObserverEvent) then) =
      _$MembershipStatusObserverEventCopyWithImpl<$Res,
          MembershipStatusObserverEvent>;
}

/// @nodoc
class _$MembershipStatusObserverEventCopyWithImpl<$Res,
        $Val extends MembershipStatusObserverEvent>
    implements $MembershipStatusObserverEventCopyWith<$Res> {
  _$MembershipStatusObserverEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppOpenedCopyWith<$Res> {
  factory _$$AppOpenedCopyWith(
          _$AppOpened value, $Res Function(_$AppOpened) then) =
      __$$AppOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppOpenedCopyWithImpl<$Res>
    extends _$MembershipStatusObserverEventCopyWithImpl<$Res, _$AppOpened>
    implements _$$AppOpenedCopyWith<$Res> {
  __$$AppOpenedCopyWithImpl(
      _$AppOpened _value, $Res Function(_$AppOpened) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppOpened implements AppOpened {
  const _$AppOpened();

  @override
  String toString() {
    return 'MembershipStatusObserverEvent.appOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appOpened,
  }) {
    return appOpened();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appOpened,
  }) {
    return appOpened?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appOpened,
    required TResult orElse(),
  }) {
    if (appOpened != null) {
      return appOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppOpened value) appOpened,
  }) {
    return appOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppOpened value)? appOpened,
  }) {
    return appOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppOpened value)? appOpened,
    required TResult orElse(),
  }) {
    if (appOpened != null) {
      return appOpened(this);
    }
    return orElse();
  }
}

abstract class AppOpened implements MembershipStatusObserverEvent {
  const factory AppOpened() = _$AppOpened;
}

/// @nodoc
mixin _$MembershipStatusObserverState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MembershipStatus membershipStatus)
        membershipStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MembershipStatus membershipStatus)?
        membershipStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MembershipStatus membershipStatus)?
        membershipStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MembershipStatusChanged value)
        membershipStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MembershipStatusChanged value)? membershipStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MembershipStatusChanged value)? membershipStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipStatusObserverStateCopyWith<$Res> {
  factory $MembershipStatusObserverStateCopyWith(
          MembershipStatusObserverState value,
          $Res Function(MembershipStatusObserverState) then) =
      _$MembershipStatusObserverStateCopyWithImpl<$Res,
          MembershipStatusObserverState>;
}

/// @nodoc
class _$MembershipStatusObserverStateCopyWithImpl<$Res,
        $Val extends MembershipStatusObserverState>
    implements $MembershipStatusObserverStateCopyWith<$Res> {
  _$MembershipStatusObserverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MembershipStatusObserverStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MembershipStatusObserverState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MembershipStatus membershipStatus)
        membershipStatusChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MembershipStatus membershipStatus)?
        membershipStatusChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MembershipStatus membershipStatus)?
        membershipStatusChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MembershipStatusChanged value)
        membershipStatusChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MembershipStatusChanged value)? membershipStatusChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MembershipStatusChanged value)? membershipStatusChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MembershipStatusObserverState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_MembershipStatusChangedCopyWith<$Res> {
  factory _$$_MembershipStatusChangedCopyWith(_$_MembershipStatusChanged value,
          $Res Function(_$_MembershipStatusChanged) then) =
      __$$_MembershipStatusChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({MembershipStatus membershipStatus});
}

/// @nodoc
class __$$_MembershipStatusChangedCopyWithImpl<$Res>
    extends _$MembershipStatusObserverStateCopyWithImpl<$Res,
        _$_MembershipStatusChanged>
    implements _$$_MembershipStatusChangedCopyWith<$Res> {
  __$$_MembershipStatusChangedCopyWithImpl(_$_MembershipStatusChanged _value,
      $Res Function(_$_MembershipStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? membershipStatus = null,
  }) {
    return _then(_$_MembershipStatusChanged(
      membershipStatus: null == membershipStatus
          ? _value.membershipStatus
          : membershipStatus // ignore: cast_nullable_to_non_nullable
              as MembershipStatus,
    ));
  }
}

/// @nodoc

class _$_MembershipStatusChanged implements _MembershipStatusChanged {
  const _$_MembershipStatusChanged({required this.membershipStatus});

  @override
  final MembershipStatus membershipStatus;

  @override
  String toString() {
    return 'MembershipStatusObserverState.membershipStatusChanged(membershipStatus: $membershipStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MembershipStatusChanged &&
            (identical(other.membershipStatus, membershipStatus) ||
                other.membershipStatus == membershipStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, membershipStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembershipStatusChangedCopyWith<_$_MembershipStatusChanged>
      get copyWith =>
          __$$_MembershipStatusChangedCopyWithImpl<_$_MembershipStatusChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MembershipStatus membershipStatus)
        membershipStatusChanged,
  }) {
    return membershipStatusChanged(membershipStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MembershipStatus membershipStatus)?
        membershipStatusChanged,
  }) {
    return membershipStatusChanged?.call(membershipStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MembershipStatus membershipStatus)?
        membershipStatusChanged,
    required TResult orElse(),
  }) {
    if (membershipStatusChanged != null) {
      return membershipStatusChanged(membershipStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MembershipStatusChanged value)
        membershipStatusChanged,
  }) {
    return membershipStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MembershipStatusChanged value)? membershipStatusChanged,
  }) {
    return membershipStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MembershipStatusChanged value)? membershipStatusChanged,
    required TResult orElse(),
  }) {
    if (membershipStatusChanged != null) {
      return membershipStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _MembershipStatusChanged
    implements MembershipStatusObserverState {
  const factory _MembershipStatusChanged(
          {required final MembershipStatus membershipStatus}) =
      _$_MembershipStatusChanged;

  MembershipStatus get membershipStatus;
  @JsonKey(ignore: true)
  _$$_MembershipStatusChangedCopyWith<_$_MembershipStatusChanged>
      get copyWith => throw _privateConstructorUsedError;
}
