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
  MembershipStatus get membershipStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MembershipStatus membershipStatus)
        membershipStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MembershipStatus membershipStatus)?
        membershipStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MembershipStatus membershipStatus)?
        membershipStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MembershipStatusChanged value)
        membershipStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MembershipStatusChanged value)? membershipStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MembershipStatusChanged value)? membershipStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MembershipStatusObserverEventCopyWith<MembershipStatusObserverEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipStatusObserverEventCopyWith<$Res> {
  factory $MembershipStatusObserverEventCopyWith(
          MembershipStatusObserverEvent value,
          $Res Function(MembershipStatusObserverEvent) then) =
      _$MembershipStatusObserverEventCopyWithImpl<$Res,
          MembershipStatusObserverEvent>;
  @useResult
  $Res call({MembershipStatus membershipStatus});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? membershipStatus = null,
  }) {
    return _then(_value.copyWith(
      membershipStatus: null == membershipStatus
          ? _value.membershipStatus
          : membershipStatus // ignore: cast_nullable_to_non_nullable
              as MembershipStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MembershipStatusChangedCopyWith<$Res>
    implements $MembershipStatusObserverEventCopyWith<$Res> {
  factory _$$_MembershipStatusChangedCopyWith(_$_MembershipStatusChanged value,
          $Res Function(_$_MembershipStatusChanged) then) =
      __$$_MembershipStatusChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MembershipStatus membershipStatus});
}

/// @nodoc
class __$$_MembershipStatusChangedCopyWithImpl<$Res>
    extends _$MembershipStatusObserverEventCopyWithImpl<$Res,
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
    return 'MembershipStatusObserverEvent.membershipStatusChanged(membershipStatus: $membershipStatus)';
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
    required TResult Function(MembershipStatus membershipStatus)
        membershipStatusChanged,
  }) {
    return membershipStatusChanged(membershipStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MembershipStatus membershipStatus)?
        membershipStatusChanged,
  }) {
    return membershipStatusChanged?.call(membershipStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_MembershipStatusChanged value)
        membershipStatusChanged,
  }) {
    return membershipStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MembershipStatusChanged value)? membershipStatusChanged,
  }) {
    return membershipStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
    implements MembershipStatusObserverEvent {
  const factory _MembershipStatusChanged(
          {required final MembershipStatus membershipStatus}) =
      _$_MembershipStatusChanged;

  @override
  MembershipStatus get membershipStatus;
  @override
  @JsonKey(ignore: true)
  _$$_MembershipStatusChangedCopyWith<_$_MembershipStatusChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MembershipStatusObserverState {
  MembershipStatus? get membershipStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MembershipStatusObserverStateCopyWith<MembershipStatusObserverState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipStatusObserverStateCopyWith<$Res> {
  factory $MembershipStatusObserverStateCopyWith(
          MembershipStatusObserverState value,
          $Res Function(MembershipStatusObserverState) then) =
      _$MembershipStatusObserverStateCopyWithImpl<$Res,
          MembershipStatusObserverState>;
  @useResult
  $Res call({MembershipStatus? membershipStatus});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? membershipStatus = freezed,
  }) {
    return _then(_value.copyWith(
      membershipStatus: freezed == membershipStatus
          ? _value.membershipStatus
          : membershipStatus // ignore: cast_nullable_to_non_nullable
              as MembershipStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MembershipStatusObserverStateCopyWith<$Res>
    implements $MembershipStatusObserverStateCopyWith<$Res> {
  factory _$$_MembershipStatusObserverStateCopyWith(
          _$_MembershipStatusObserverState value,
          $Res Function(_$_MembershipStatusObserverState) then) =
      __$$_MembershipStatusObserverStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MembershipStatus? membershipStatus});
}

/// @nodoc
class __$$_MembershipStatusObserverStateCopyWithImpl<$Res>
    extends _$MembershipStatusObserverStateCopyWithImpl<$Res,
        _$_MembershipStatusObserverState>
    implements _$$_MembershipStatusObserverStateCopyWith<$Res> {
  __$$_MembershipStatusObserverStateCopyWithImpl(
      _$_MembershipStatusObserverState _value,
      $Res Function(_$_MembershipStatusObserverState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? membershipStatus = freezed,
  }) {
    return _then(_$_MembershipStatusObserverState(
      membershipStatus: freezed == membershipStatus
          ? _value.membershipStatus
          : membershipStatus // ignore: cast_nullable_to_non_nullable
              as MembershipStatus?,
    ));
  }
}

/// @nodoc

class _$_MembershipStatusObserverState
    implements _MembershipStatusObserverState {
  const _$_MembershipStatusObserverState({this.membershipStatus});

  @override
  final MembershipStatus? membershipStatus;

  @override
  String toString() {
    return 'MembershipStatusObserverState(membershipStatus: $membershipStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MembershipStatusObserverState &&
            (identical(other.membershipStatus, membershipStatus) ||
                other.membershipStatus == membershipStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, membershipStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembershipStatusObserverStateCopyWith<_$_MembershipStatusObserverState>
      get copyWith => __$$_MembershipStatusObserverStateCopyWithImpl<
          _$_MembershipStatusObserverState>(this, _$identity);
}

abstract class _MembershipStatusObserverState
    implements MembershipStatusObserverState {
  const factory _MembershipStatusObserverState(
          {final MembershipStatus? membershipStatus}) =
      _$_MembershipStatusObserverState;

  @override
  MembershipStatus? get membershipStatus;
  @override
  @JsonKey(ignore: true)
  _$$_MembershipStatusObserverStateCopyWith<_$_MembershipStatusObserverState>
      get copyWith => throw _privateConstructorUsedError;
}
