// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender gender) genderPicked,
    required TResult Function(String birthdayDate) birthdayDateChanged,
    required TResult Function(RelationshipStatus? relationshipStatus)
        relationshipStatusPicked,
    required TResult Function(int kidsCount) kidsCountPicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordApproved,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function() formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender gender)? genderPicked,
    TResult? Function(String birthdayDate)? birthdayDateChanged,
    TResult? Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult? Function(int kidsCount)? kidsCountPicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordApproved,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function()? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender gender)? genderPicked,
    TResult Function(String birthdayDate)? birthdayDateChanged,
    TResult Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult Function(int kidsCount)? kidsCountPicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordApproved,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenderPicked value) genderPicked,
    required TResult Function(_BirthdayDateChanged value) birthdayDateChanged,
    required TResult Function(_RelationshipStatusPicked value)
        relationshipStatusPicked,
    required TResult Function(_KidsCountPicked value) kidsCountPicked,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordApproved value) passwordApproved,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderPicked value)? genderPicked,
    TResult? Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult? Function(_RelationshipStatusPicked value)?
        relationshipStatusPicked,
    TResult? Function(_KidsCountPicked value)? kidsCountPicked,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordApproved value)? passwordApproved,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderPicked value)? genderPicked,
    TResult Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult Function(_RelationshipStatusPicked value)? relationshipStatusPicked,
    TResult Function(_KidsCountPicked value)? kidsCountPicked,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordApproved value)? passwordApproved,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GenderPickedCopyWith<$Res> {
  factory _$$_GenderPickedCopyWith(
          _$_GenderPicked value, $Res Function(_$_GenderPicked) then) =
      __$$_GenderPickedCopyWithImpl<$Res>;
  @useResult
  $Res call({Gender gender});
}

/// @nodoc
class __$$_GenderPickedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_GenderPicked>
    implements _$$_GenderPickedCopyWith<$Res> {
  __$$_GenderPickedCopyWithImpl(
      _$_GenderPicked _value, $Res Function(_$_GenderPicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
  }) {
    return _then(_$_GenderPicked(
      null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
    ));
  }
}

/// @nodoc

class _$_GenderPicked implements _GenderPicked {
  const _$_GenderPicked(this.gender);

  @override
  final Gender gender;

  @override
  String toString() {
    return 'RegistrationEvent.genderPicked(gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenderPicked &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenderPickedCopyWith<_$_GenderPicked> get copyWith =>
      __$$_GenderPickedCopyWithImpl<_$_GenderPicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender gender) genderPicked,
    required TResult Function(String birthdayDate) birthdayDateChanged,
    required TResult Function(RelationshipStatus? relationshipStatus)
        relationshipStatusPicked,
    required TResult Function(int kidsCount) kidsCountPicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordApproved,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function() formSubmitted,
  }) {
    return genderPicked(gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender gender)? genderPicked,
    TResult? Function(String birthdayDate)? birthdayDateChanged,
    TResult? Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult? Function(int kidsCount)? kidsCountPicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordApproved,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function()? formSubmitted,
  }) {
    return genderPicked?.call(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender gender)? genderPicked,
    TResult Function(String birthdayDate)? birthdayDateChanged,
    TResult Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult Function(int kidsCount)? kidsCountPicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordApproved,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (genderPicked != null) {
      return genderPicked(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenderPicked value) genderPicked,
    required TResult Function(_BirthdayDateChanged value) birthdayDateChanged,
    required TResult Function(_RelationshipStatusPicked value)
        relationshipStatusPicked,
    required TResult Function(_KidsCountPicked value) kidsCountPicked,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordApproved value) passwordApproved,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return genderPicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderPicked value)? genderPicked,
    TResult? Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult? Function(_RelationshipStatusPicked value)?
        relationshipStatusPicked,
    TResult? Function(_KidsCountPicked value)? kidsCountPicked,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordApproved value)? passwordApproved,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
  }) {
    return genderPicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderPicked value)? genderPicked,
    TResult Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult Function(_RelationshipStatusPicked value)? relationshipStatusPicked,
    TResult Function(_KidsCountPicked value)? kidsCountPicked,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordApproved value)? passwordApproved,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (genderPicked != null) {
      return genderPicked(this);
    }
    return orElse();
  }
}

abstract class _GenderPicked implements RegistrationEvent {
  const factory _GenderPicked(final Gender gender) = _$_GenderPicked;

  Gender get gender;
  @JsonKey(ignore: true)
  _$$_GenderPickedCopyWith<_$_GenderPicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BirthdayDateChangedCopyWith<$Res> {
  factory _$$_BirthdayDateChangedCopyWith(_$_BirthdayDateChanged value,
          $Res Function(_$_BirthdayDateChanged) then) =
      __$$_BirthdayDateChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String birthdayDate});
}

/// @nodoc
class __$$_BirthdayDateChangedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_BirthdayDateChanged>
    implements _$$_BirthdayDateChangedCopyWith<$Res> {
  __$$_BirthdayDateChangedCopyWithImpl(_$_BirthdayDateChanged _value,
      $Res Function(_$_BirthdayDateChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthdayDate = null,
  }) {
    return _then(_$_BirthdayDateChanged(
      null == birthdayDate
          ? _value.birthdayDate
          : birthdayDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BirthdayDateChanged implements _BirthdayDateChanged {
  const _$_BirthdayDateChanged(this.birthdayDate);

  @override
  final String birthdayDate;

  @override
  String toString() {
    return 'RegistrationEvent.birthdayDateChanged(birthdayDate: $birthdayDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BirthdayDateChanged &&
            (identical(other.birthdayDate, birthdayDate) ||
                other.birthdayDate == birthdayDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, birthdayDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BirthdayDateChangedCopyWith<_$_BirthdayDateChanged> get copyWith =>
      __$$_BirthdayDateChangedCopyWithImpl<_$_BirthdayDateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender gender) genderPicked,
    required TResult Function(String birthdayDate) birthdayDateChanged,
    required TResult Function(RelationshipStatus? relationshipStatus)
        relationshipStatusPicked,
    required TResult Function(int kidsCount) kidsCountPicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordApproved,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function() formSubmitted,
  }) {
    return birthdayDateChanged(birthdayDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender gender)? genderPicked,
    TResult? Function(String birthdayDate)? birthdayDateChanged,
    TResult? Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult? Function(int kidsCount)? kidsCountPicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordApproved,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function()? formSubmitted,
  }) {
    return birthdayDateChanged?.call(birthdayDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender gender)? genderPicked,
    TResult Function(String birthdayDate)? birthdayDateChanged,
    TResult Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult Function(int kidsCount)? kidsCountPicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordApproved,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (birthdayDateChanged != null) {
      return birthdayDateChanged(birthdayDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenderPicked value) genderPicked,
    required TResult Function(_BirthdayDateChanged value) birthdayDateChanged,
    required TResult Function(_RelationshipStatusPicked value)
        relationshipStatusPicked,
    required TResult Function(_KidsCountPicked value) kidsCountPicked,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordApproved value) passwordApproved,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return birthdayDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderPicked value)? genderPicked,
    TResult? Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult? Function(_RelationshipStatusPicked value)?
        relationshipStatusPicked,
    TResult? Function(_KidsCountPicked value)? kidsCountPicked,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordApproved value)? passwordApproved,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
  }) {
    return birthdayDateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderPicked value)? genderPicked,
    TResult Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult Function(_RelationshipStatusPicked value)? relationshipStatusPicked,
    TResult Function(_KidsCountPicked value)? kidsCountPicked,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordApproved value)? passwordApproved,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (birthdayDateChanged != null) {
      return birthdayDateChanged(this);
    }
    return orElse();
  }
}

abstract class _BirthdayDateChanged implements RegistrationEvent {
  const factory _BirthdayDateChanged(final String birthdayDate) =
      _$_BirthdayDateChanged;

  String get birthdayDate;
  @JsonKey(ignore: true)
  _$$_BirthdayDateChangedCopyWith<_$_BirthdayDateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RelationshipStatusPickedCopyWith<$Res> {
  factory _$$_RelationshipStatusPickedCopyWith(
          _$_RelationshipStatusPicked value,
          $Res Function(_$_RelationshipStatusPicked) then) =
      __$$_RelationshipStatusPickedCopyWithImpl<$Res>;
  @useResult
  $Res call({RelationshipStatus? relationshipStatus});
}

/// @nodoc
class __$$_RelationshipStatusPickedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_RelationshipStatusPicked>
    implements _$$_RelationshipStatusPickedCopyWith<$Res> {
  __$$_RelationshipStatusPickedCopyWithImpl(_$_RelationshipStatusPicked _value,
      $Res Function(_$_RelationshipStatusPicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relationshipStatus = freezed,
  }) {
    return _then(_$_RelationshipStatusPicked(
      freezed == relationshipStatus
          ? _value.relationshipStatus
          : relationshipStatus // ignore: cast_nullable_to_non_nullable
              as RelationshipStatus?,
    ));
  }
}

/// @nodoc

class _$_RelationshipStatusPicked implements _RelationshipStatusPicked {
  const _$_RelationshipStatusPicked(this.relationshipStatus);

  @override
  final RelationshipStatus? relationshipStatus;

  @override
  String toString() {
    return 'RegistrationEvent.relationshipStatusPicked(relationshipStatus: $relationshipStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelationshipStatusPicked &&
            (identical(other.relationshipStatus, relationshipStatus) ||
                other.relationshipStatus == relationshipStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relationshipStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelationshipStatusPickedCopyWith<_$_RelationshipStatusPicked>
      get copyWith => __$$_RelationshipStatusPickedCopyWithImpl<
          _$_RelationshipStatusPicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender gender) genderPicked,
    required TResult Function(String birthdayDate) birthdayDateChanged,
    required TResult Function(RelationshipStatus? relationshipStatus)
        relationshipStatusPicked,
    required TResult Function(int kidsCount) kidsCountPicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordApproved,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function() formSubmitted,
  }) {
    return relationshipStatusPicked(relationshipStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender gender)? genderPicked,
    TResult? Function(String birthdayDate)? birthdayDateChanged,
    TResult? Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult? Function(int kidsCount)? kidsCountPicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordApproved,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function()? formSubmitted,
  }) {
    return relationshipStatusPicked?.call(relationshipStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender gender)? genderPicked,
    TResult Function(String birthdayDate)? birthdayDateChanged,
    TResult Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult Function(int kidsCount)? kidsCountPicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordApproved,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (relationshipStatusPicked != null) {
      return relationshipStatusPicked(relationshipStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenderPicked value) genderPicked,
    required TResult Function(_BirthdayDateChanged value) birthdayDateChanged,
    required TResult Function(_RelationshipStatusPicked value)
        relationshipStatusPicked,
    required TResult Function(_KidsCountPicked value) kidsCountPicked,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordApproved value) passwordApproved,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return relationshipStatusPicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderPicked value)? genderPicked,
    TResult? Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult? Function(_RelationshipStatusPicked value)?
        relationshipStatusPicked,
    TResult? Function(_KidsCountPicked value)? kidsCountPicked,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordApproved value)? passwordApproved,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
  }) {
    return relationshipStatusPicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderPicked value)? genderPicked,
    TResult Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult Function(_RelationshipStatusPicked value)? relationshipStatusPicked,
    TResult Function(_KidsCountPicked value)? kidsCountPicked,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordApproved value)? passwordApproved,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (relationshipStatusPicked != null) {
      return relationshipStatusPicked(this);
    }
    return orElse();
  }
}

abstract class _RelationshipStatusPicked implements RegistrationEvent {
  const factory _RelationshipStatusPicked(
          final RelationshipStatus? relationshipStatus) =
      _$_RelationshipStatusPicked;

  RelationshipStatus? get relationshipStatus;
  @JsonKey(ignore: true)
  _$$_RelationshipStatusPickedCopyWith<_$_RelationshipStatusPicked>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_KidsCountPickedCopyWith<$Res> {
  factory _$$_KidsCountPickedCopyWith(
          _$_KidsCountPicked value, $Res Function(_$_KidsCountPicked) then) =
      __$$_KidsCountPickedCopyWithImpl<$Res>;
  @useResult
  $Res call({int kidsCount});
}

/// @nodoc
class __$$_KidsCountPickedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_KidsCountPicked>
    implements _$$_KidsCountPickedCopyWith<$Res> {
  __$$_KidsCountPickedCopyWithImpl(
      _$_KidsCountPicked _value, $Res Function(_$_KidsCountPicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kidsCount = null,
  }) {
    return _then(_$_KidsCountPicked(
      null == kidsCount
          ? _value.kidsCount
          : kidsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_KidsCountPicked implements _KidsCountPicked {
  const _$_KidsCountPicked(this.kidsCount);

  @override
  final int kidsCount;

  @override
  String toString() {
    return 'RegistrationEvent.kidsCountPicked(kidsCount: $kidsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KidsCountPicked &&
            (identical(other.kidsCount, kidsCount) ||
                other.kidsCount == kidsCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kidsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KidsCountPickedCopyWith<_$_KidsCountPicked> get copyWith =>
      __$$_KidsCountPickedCopyWithImpl<_$_KidsCountPicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender gender) genderPicked,
    required TResult Function(String birthdayDate) birthdayDateChanged,
    required TResult Function(RelationshipStatus? relationshipStatus)
        relationshipStatusPicked,
    required TResult Function(int kidsCount) kidsCountPicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordApproved,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function() formSubmitted,
  }) {
    return kidsCountPicked(kidsCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender gender)? genderPicked,
    TResult? Function(String birthdayDate)? birthdayDateChanged,
    TResult? Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult? Function(int kidsCount)? kidsCountPicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordApproved,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function()? formSubmitted,
  }) {
    return kidsCountPicked?.call(kidsCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender gender)? genderPicked,
    TResult Function(String birthdayDate)? birthdayDateChanged,
    TResult Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult Function(int kidsCount)? kidsCountPicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordApproved,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (kidsCountPicked != null) {
      return kidsCountPicked(kidsCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenderPicked value) genderPicked,
    required TResult Function(_BirthdayDateChanged value) birthdayDateChanged,
    required TResult Function(_RelationshipStatusPicked value)
        relationshipStatusPicked,
    required TResult Function(_KidsCountPicked value) kidsCountPicked,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordApproved value) passwordApproved,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return kidsCountPicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderPicked value)? genderPicked,
    TResult? Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult? Function(_RelationshipStatusPicked value)?
        relationshipStatusPicked,
    TResult? Function(_KidsCountPicked value)? kidsCountPicked,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordApproved value)? passwordApproved,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
  }) {
    return kidsCountPicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderPicked value)? genderPicked,
    TResult Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult Function(_RelationshipStatusPicked value)? relationshipStatusPicked,
    TResult Function(_KidsCountPicked value)? kidsCountPicked,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordApproved value)? passwordApproved,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (kidsCountPicked != null) {
      return kidsCountPicked(this);
    }
    return orElse();
  }
}

abstract class _KidsCountPicked implements RegistrationEvent {
  const factory _KidsCountPicked(final int kidsCount) = _$_KidsCountPicked;

  int get kidsCount;
  @JsonKey(ignore: true)
  _$$_KidsCountPickedCopyWith<_$_KidsCountPicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailChanged(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegistrationEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender gender) genderPicked,
    required TResult Function(String birthdayDate) birthdayDateChanged,
    required TResult Function(RelationshipStatus? relationshipStatus)
        relationshipStatusPicked,
    required TResult Function(int kidsCount) kidsCountPicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordApproved,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function() formSubmitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender gender)? genderPicked,
    TResult? Function(String birthdayDate)? birthdayDateChanged,
    TResult? Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult? Function(int kidsCount)? kidsCountPicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordApproved,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function()? formSubmitted,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender gender)? genderPicked,
    TResult Function(String birthdayDate)? birthdayDateChanged,
    TResult Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult Function(int kidsCount)? kidsCountPicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordApproved,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenderPicked value) genderPicked,
    required TResult Function(_BirthdayDateChanged value) birthdayDateChanged,
    required TResult Function(_RelationshipStatusPicked value)
        relationshipStatusPicked,
    required TResult Function(_KidsCountPicked value) kidsCountPicked,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordApproved value) passwordApproved,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderPicked value)? genderPicked,
    TResult? Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult? Function(_RelationshipStatusPicked value)?
        relationshipStatusPicked,
    TResult? Function(_KidsCountPicked value)? kidsCountPicked,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordApproved value)? passwordApproved,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderPicked value)? genderPicked,
    TResult Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult Function(_RelationshipStatusPicked value)? relationshipStatusPicked,
    TResult Function(_KidsCountPicked value)? kidsCountPicked,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordApproved value)? passwordApproved,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements RegistrationEvent {
  const factory _EmailChanged(final String email) = _$_EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordApprovedCopyWith<$Res> {
  factory _$$_PasswordApprovedCopyWith(
          _$_PasswordApproved value, $Res Function(_$_PasswordApproved) then) =
      __$$_PasswordApprovedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordApprovedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_PasswordApproved>
    implements _$$_PasswordApprovedCopyWith<$Res> {
  __$$_PasswordApprovedCopyWithImpl(
      _$_PasswordApproved _value, $Res Function(_$_PasswordApproved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordApproved(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordApproved implements _PasswordApproved {
  const _$_PasswordApproved(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationEvent.passwordApproved(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordApproved &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordApprovedCopyWith<_$_PasswordApproved> get copyWith =>
      __$$_PasswordApprovedCopyWithImpl<_$_PasswordApproved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender gender) genderPicked,
    required TResult Function(String birthdayDate) birthdayDateChanged,
    required TResult Function(RelationshipStatus? relationshipStatus)
        relationshipStatusPicked,
    required TResult Function(int kidsCount) kidsCountPicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordApproved,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function() formSubmitted,
  }) {
    return passwordApproved(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender gender)? genderPicked,
    TResult? Function(String birthdayDate)? birthdayDateChanged,
    TResult? Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult? Function(int kidsCount)? kidsCountPicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordApproved,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function()? formSubmitted,
  }) {
    return passwordApproved?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender gender)? genderPicked,
    TResult Function(String birthdayDate)? birthdayDateChanged,
    TResult Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult Function(int kidsCount)? kidsCountPicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordApproved,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordApproved != null) {
      return passwordApproved(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenderPicked value) genderPicked,
    required TResult Function(_BirthdayDateChanged value) birthdayDateChanged,
    required TResult Function(_RelationshipStatusPicked value)
        relationshipStatusPicked,
    required TResult Function(_KidsCountPicked value) kidsCountPicked,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordApproved value) passwordApproved,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return passwordApproved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderPicked value)? genderPicked,
    TResult? Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult? Function(_RelationshipStatusPicked value)?
        relationshipStatusPicked,
    TResult? Function(_KidsCountPicked value)? kidsCountPicked,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordApproved value)? passwordApproved,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
  }) {
    return passwordApproved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderPicked value)? genderPicked,
    TResult Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult Function(_RelationshipStatusPicked value)? relationshipStatusPicked,
    TResult Function(_KidsCountPicked value)? kidsCountPicked,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordApproved value)? passwordApproved,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordApproved != null) {
      return passwordApproved(this);
    }
    return orElse();
  }
}

abstract class _PasswordApproved implements RegistrationEvent {
  const factory _PasswordApproved(final String password) = _$_PasswordApproved;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordApprovedCopyWith<_$_PasswordApproved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FullNameChangedCopyWith<$Res> {
  factory _$$_FullNameChangedCopyWith(
          _$_FullNameChanged value, $Res Function(_$_FullNameChanged) then) =
      __$$_FullNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullName});
}

/// @nodoc
class __$$_FullNameChangedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_FullNameChanged>
    implements _$$_FullNameChangedCopyWith<$Res> {
  __$$_FullNameChangedCopyWithImpl(
      _$_FullNameChanged _value, $Res Function(_$_FullNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_$_FullNameChanged(
      null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FullNameChanged implements _FullNameChanged {
  const _$_FullNameChanged(this.fullName);

  @override
  final String fullName;

  @override
  String toString() {
    return 'RegistrationEvent.fullNameChanged(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullNameChanged &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FullNameChangedCopyWith<_$_FullNameChanged> get copyWith =>
      __$$_FullNameChangedCopyWithImpl<_$_FullNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender gender) genderPicked,
    required TResult Function(String birthdayDate) birthdayDateChanged,
    required TResult Function(RelationshipStatus? relationshipStatus)
        relationshipStatusPicked,
    required TResult Function(int kidsCount) kidsCountPicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordApproved,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function() formSubmitted,
  }) {
    return fullNameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender gender)? genderPicked,
    TResult? Function(String birthdayDate)? birthdayDateChanged,
    TResult? Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult? Function(int kidsCount)? kidsCountPicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordApproved,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function()? formSubmitted,
  }) {
    return fullNameChanged?.call(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender gender)? genderPicked,
    TResult Function(String birthdayDate)? birthdayDateChanged,
    TResult Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult Function(int kidsCount)? kidsCountPicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordApproved,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenderPicked value) genderPicked,
    required TResult Function(_BirthdayDateChanged value) birthdayDateChanged,
    required TResult Function(_RelationshipStatusPicked value)
        relationshipStatusPicked,
    required TResult Function(_KidsCountPicked value) kidsCountPicked,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordApproved value) passwordApproved,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderPicked value)? genderPicked,
    TResult? Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult? Function(_RelationshipStatusPicked value)?
        relationshipStatusPicked,
    TResult? Function(_KidsCountPicked value)? kidsCountPicked,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordApproved value)? passwordApproved,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
  }) {
    return fullNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderPicked value)? genderPicked,
    TResult Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult Function(_RelationshipStatusPicked value)? relationshipStatusPicked,
    TResult Function(_KidsCountPicked value)? kidsCountPicked,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordApproved value)? passwordApproved,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FullNameChanged implements RegistrationEvent {
  const factory _FullNameChanged(final String fullName) = _$_FullNameChanged;

  String get fullName;
  @JsonKey(ignore: true)
  _$$_FullNameChangedCopyWith<_$_FullNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FormSubmittedCopyWith<$Res> {
  factory _$$_FormSubmittedCopyWith(
          _$_FormSubmitted value, $Res Function(_$_FormSubmitted) then) =
      __$$_FormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FormSubmittedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_FormSubmitted>
    implements _$$_FormSubmittedCopyWith<$Res> {
  __$$_FormSubmittedCopyWithImpl(
      _$_FormSubmitted _value, $Res Function(_$_FormSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FormSubmitted implements _FormSubmitted {
  const _$_FormSubmitted();

  @override
  String toString() {
    return 'RegistrationEvent.formSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FormSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Gender gender) genderPicked,
    required TResult Function(String birthdayDate) birthdayDateChanged,
    required TResult Function(RelationshipStatus? relationshipStatus)
        relationshipStatusPicked,
    required TResult Function(int kidsCount) kidsCountPicked,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordApproved,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function() formSubmitted,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender gender)? genderPicked,
    TResult? Function(String birthdayDate)? birthdayDateChanged,
    TResult? Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult? Function(int kidsCount)? kidsCountPicked,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordApproved,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function()? formSubmitted,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender gender)? genderPicked,
    TResult Function(String birthdayDate)? birthdayDateChanged,
    TResult Function(RelationshipStatus? relationshipStatus)?
        relationshipStatusPicked,
    TResult Function(int kidsCount)? kidsCountPicked,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordApproved,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenderPicked value) genderPicked,
    required TResult Function(_BirthdayDateChanged value) birthdayDateChanged,
    required TResult Function(_RelationshipStatusPicked value)
        relationshipStatusPicked,
    required TResult Function(_KidsCountPicked value) kidsCountPicked,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordApproved value) passwordApproved,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenderPicked value)? genderPicked,
    TResult? Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult? Function(_RelationshipStatusPicked value)?
        relationshipStatusPicked,
    TResult? Function(_KidsCountPicked value)? kidsCountPicked,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordApproved value)? passwordApproved,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_FormSubmitted value)? formSubmitted,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenderPicked value)? genderPicked,
    TResult Function(_BirthdayDateChanged value)? birthdayDateChanged,
    TResult Function(_RelationshipStatusPicked value)? relationshipStatusPicked,
    TResult Function(_KidsCountPicked value)? kidsCountPicked,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordApproved value)? passwordApproved,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class _FormSubmitted implements RegistrationEvent {
  const factory _FormSubmitted() = _$_FormSubmitted;
}

/// @nodoc
mixin _$RegistrationState {
  Gender get gender => throw _privateConstructorUsedError;
  int get kidsCount => throw _privateConstructorUsedError;
  bool get isFormSubmitting => throw _privateConstructorUsedError;
  bool get isFormSubmissionSuccess => throw _privateConstructorUsedError;
  bool get isFormFilled => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get birthdayDate => throw _privateConstructorUsedError;
  RelationshipStatus? get relationshipStatus =>
      throw _privateConstructorUsedError;
  String? get errorMessageLocaleKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
  @useResult
  $Res call(
      {Gender gender,
      int kidsCount,
      bool isFormSubmitting,
      bool isFormSubmissionSuccess,
      bool isFormFilled,
      String? email,
      String? password,
      String? fullName,
      String? birthdayDate,
      RelationshipStatus? relationshipStatus,
      String? errorMessageLocaleKey});
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
    Object? kidsCount = null,
    Object? isFormSubmitting = null,
    Object? isFormSubmissionSuccess = null,
    Object? isFormFilled = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? fullName = freezed,
    Object? birthdayDate = freezed,
    Object? relationshipStatus = freezed,
    Object? errorMessageLocaleKey = freezed,
  }) {
    return _then(_value.copyWith(
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      kidsCount: null == kidsCount
          ? _value.kidsCount
          : kidsCount // ignore: cast_nullable_to_non_nullable
              as int,
      isFormSubmitting: null == isFormSubmitting
          ? _value.isFormSubmitting
          : isFormSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormSubmissionSuccess: null == isFormSubmissionSuccess
          ? _value.isFormSubmissionSuccess
          : isFormSubmissionSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormFilled: null == isFormFilled
          ? _value.isFormFilled
          : isFormFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdayDate: freezed == birthdayDate
          ? _value.birthdayDate
          : birthdayDate // ignore: cast_nullable_to_non_nullable
              as String?,
      relationshipStatus: freezed == relationshipStatus
          ? _value.relationshipStatus
          : relationshipStatus // ignore: cast_nullable_to_non_nullable
              as RelationshipStatus?,
      errorMessageLocaleKey: freezed == errorMessageLocaleKey
          ? _value.errorMessageLocaleKey
          : errorMessageLocaleKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationStateCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$_RegistrationStateCopyWith(_$_RegistrationState value,
          $Res Function(_$_RegistrationState) then) =
      __$$_RegistrationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Gender gender,
      int kidsCount,
      bool isFormSubmitting,
      bool isFormSubmissionSuccess,
      bool isFormFilled,
      String? email,
      String? password,
      String? fullName,
      String? birthdayDate,
      RelationshipStatus? relationshipStatus,
      String? errorMessageLocaleKey});
}

/// @nodoc
class __$$_RegistrationStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_RegistrationState>
    implements _$$_RegistrationStateCopyWith<$Res> {
  __$$_RegistrationStateCopyWithImpl(
      _$_RegistrationState _value, $Res Function(_$_RegistrationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
    Object? kidsCount = null,
    Object? isFormSubmitting = null,
    Object? isFormSubmissionSuccess = null,
    Object? isFormFilled = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? fullName = freezed,
    Object? birthdayDate = freezed,
    Object? relationshipStatus = freezed,
    Object? errorMessageLocaleKey = freezed,
  }) {
    return _then(_$_RegistrationState(
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      kidsCount: null == kidsCount
          ? _value.kidsCount
          : kidsCount // ignore: cast_nullable_to_non_nullable
              as int,
      isFormSubmitting: null == isFormSubmitting
          ? _value.isFormSubmitting
          : isFormSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormSubmissionSuccess: null == isFormSubmissionSuccess
          ? _value.isFormSubmissionSuccess
          : isFormSubmissionSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormFilled: null == isFormFilled
          ? _value.isFormFilled
          : isFormFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdayDate: freezed == birthdayDate
          ? _value.birthdayDate
          : birthdayDate // ignore: cast_nullable_to_non_nullable
              as String?,
      relationshipStatus: freezed == relationshipStatus
          ? _value.relationshipStatus
          : relationshipStatus // ignore: cast_nullable_to_non_nullable
              as RelationshipStatus?,
      errorMessageLocaleKey: freezed == errorMessageLocaleKey
          ? _value.errorMessageLocaleKey
          : errorMessageLocaleKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegistrationState implements _RegistrationState {
  const _$_RegistrationState(
      {this.gender = Gender.other,
      this.kidsCount = 0,
      this.isFormSubmitting = false,
      this.isFormSubmissionSuccess = false,
      this.isFormFilled = false,
      this.email,
      this.password,
      this.fullName,
      this.birthdayDate,
      this.relationshipStatus,
      this.errorMessageLocaleKey});

  @override
  @JsonKey()
  final Gender gender;
  @override
  @JsonKey()
  final int kidsCount;
  @override
  @JsonKey()
  final bool isFormSubmitting;
  @override
  @JsonKey()
  final bool isFormSubmissionSuccess;
  @override
  @JsonKey()
  final bool isFormFilled;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? fullName;
  @override
  final String? birthdayDate;
  @override
  final RelationshipStatus? relationshipStatus;
  @override
  final String? errorMessageLocaleKey;

  @override
  String toString() {
    return 'RegistrationState(gender: $gender, kidsCount: $kidsCount, isFormSubmitting: $isFormSubmitting, isFormSubmissionSuccess: $isFormSubmissionSuccess, isFormFilled: $isFormFilled, email: $email, password: $password, fullName: $fullName, birthdayDate: $birthdayDate, relationshipStatus: $relationshipStatus, errorMessageLocaleKey: $errorMessageLocaleKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationState &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.kidsCount, kidsCount) ||
                other.kidsCount == kidsCount) &&
            (identical(other.isFormSubmitting, isFormSubmitting) ||
                other.isFormSubmitting == isFormSubmitting) &&
            (identical(
                    other.isFormSubmissionSuccess, isFormSubmissionSuccess) ||
                other.isFormSubmissionSuccess == isFormSubmissionSuccess) &&
            (identical(other.isFormFilled, isFormFilled) ||
                other.isFormFilled == isFormFilled) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.birthdayDate, birthdayDate) ||
                other.birthdayDate == birthdayDate) &&
            (identical(other.relationshipStatus, relationshipStatus) ||
                other.relationshipStatus == relationshipStatus) &&
            (identical(other.errorMessageLocaleKey, errorMessageLocaleKey) ||
                other.errorMessageLocaleKey == errorMessageLocaleKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      gender,
      kidsCount,
      isFormSubmitting,
      isFormSubmissionSuccess,
      isFormFilled,
      email,
      password,
      fullName,
      birthdayDate,
      relationshipStatus,
      errorMessageLocaleKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationStateCopyWith<_$_RegistrationState> get copyWith =>
      __$$_RegistrationStateCopyWithImpl<_$_RegistrationState>(
          this, _$identity);
}

abstract class _RegistrationState implements RegistrationState {
  const factory _RegistrationState(
      {final Gender gender,
      final int kidsCount,
      final bool isFormSubmitting,
      final bool isFormSubmissionSuccess,
      final bool isFormFilled,
      final String? email,
      final String? password,
      final String? fullName,
      final String? birthdayDate,
      final RelationshipStatus? relationshipStatus,
      final String? errorMessageLocaleKey}) = _$_RegistrationState;

  @override
  Gender get gender;
  @override
  int get kidsCount;
  @override
  bool get isFormSubmitting;
  @override
  bool get isFormSubmissionSuccess;
  @override
  bool get isFormFilled;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get fullName;
  @override
  String? get birthdayDate;
  @override
  RelationshipStatus? get relationshipStatus;
  @override
  String? get errorMessageLocaleKey;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationStateCopyWith<_$_RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}
