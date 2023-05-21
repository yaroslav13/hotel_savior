// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _UserDetails.fromJson(json);
    case 'withCredentials':
      return UserDetailsWithCredentials.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserDetails',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserDetails {
  String get fullName => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  DateTime get birthdayDate => throw _privateConstructorUsedError;
  int get kidsCount => throw _privateConstructorUsedError;
  RelationshipStatus? get relationshipStatus =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String fullName, Gender gender, DateTime birthdayDate,
            int kidsCount, String email, RelationshipStatus? relationshipStatus)
        $default, {
    required TResult Function(
            String fullName,
            UserCredentials userCredentials,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            RelationshipStatus? relationshipStatus)
        withCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String fullName,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            String email,
            RelationshipStatus? relationshipStatus)?
        $default, {
    TResult? Function(
            String fullName,
            UserCredentials userCredentials,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            RelationshipStatus? relationshipStatus)?
        withCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String fullName,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            String email,
            RelationshipStatus? relationshipStatus)?
        $default, {
    TResult Function(
            String fullName,
            UserCredentials userCredentials,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            RelationshipStatus? relationshipStatus)?
        withCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserDetails value) $default, {
    required TResult Function(UserDetailsWithCredentials value) withCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserDetails value)? $default, {
    TResult? Function(UserDetailsWithCredentials value)? withCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserDetails value)? $default, {
    TResult Function(UserDetailsWithCredentials value)? withCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsCopyWith<UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsCopyWith<$Res> {
  factory $UserDetailsCopyWith(
          UserDetails value, $Res Function(UserDetails) then) =
      _$UserDetailsCopyWithImpl<$Res, UserDetails>;
  @useResult
  $Res call(
      {String fullName,
      Gender gender,
      DateTime birthdayDate,
      int kidsCount,
      RelationshipStatus? relationshipStatus});
}

/// @nodoc
class _$UserDetailsCopyWithImpl<$Res, $Val extends UserDetails>
    implements $UserDetailsCopyWith<$Res> {
  _$UserDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? gender = null,
    Object? birthdayDate = null,
    Object? kidsCount = null,
    Object? relationshipStatus = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birthdayDate: null == birthdayDate
          ? _value.birthdayDate
          : birthdayDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      kidsCount: null == kidsCount
          ? _value.kidsCount
          : kidsCount // ignore: cast_nullable_to_non_nullable
              as int,
      relationshipStatus: freezed == relationshipStatus
          ? _value.relationshipStatus
          : relationshipStatus // ignore: cast_nullable_to_non_nullable
              as RelationshipStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDetailsCopyWith<$Res>
    implements $UserDetailsCopyWith<$Res> {
  factory _$$_UserDetailsCopyWith(
          _$_UserDetails value, $Res Function(_$_UserDetails) then) =
      __$$_UserDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullName,
      Gender gender,
      DateTime birthdayDate,
      int kidsCount,
      String email,
      RelationshipStatus? relationshipStatus});
}

/// @nodoc
class __$$_UserDetailsCopyWithImpl<$Res>
    extends _$UserDetailsCopyWithImpl<$Res, _$_UserDetails>
    implements _$$_UserDetailsCopyWith<$Res> {
  __$$_UserDetailsCopyWithImpl(
      _$_UserDetails _value, $Res Function(_$_UserDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? gender = null,
    Object? birthdayDate = null,
    Object? kidsCount = null,
    Object? email = null,
    Object? relationshipStatus = freezed,
  }) {
    return _then(_$_UserDetails(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birthdayDate: null == birthdayDate
          ? _value.birthdayDate
          : birthdayDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      kidsCount: null == kidsCount
          ? _value.kidsCount
          : kidsCount // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      relationshipStatus: freezed == relationshipStatus
          ? _value.relationshipStatus
          : relationshipStatus // ignore: cast_nullable_to_non_nullable
              as RelationshipStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDetails implements _UserDetails {
  const _$_UserDetails(
      {required this.fullName,
      required this.gender,
      required this.birthdayDate,
      required this.kidsCount,
      required this.email,
      this.relationshipStatus,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$_UserDetails.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailsFromJson(json);

  @override
  final String fullName;
  @override
  final Gender gender;
  @override
  final DateTime birthdayDate;
  @override
  final int kidsCount;
  @override
  final String email;
  @override
  final RelationshipStatus? relationshipStatus;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserDetails(fullName: $fullName, gender: $gender, birthdayDate: $birthdayDate, kidsCount: $kidsCount, email: $email, relationshipStatus: $relationshipStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetails &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthdayDate, birthdayDate) ||
                other.birthdayDate == birthdayDate) &&
            (identical(other.kidsCount, kidsCount) ||
                other.kidsCount == kidsCount) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.relationshipStatus, relationshipStatus) ||
                other.relationshipStatus == relationshipStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, gender, birthdayDate,
      kidsCount, email, relationshipStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDetailsCopyWith<_$_UserDetails> get copyWith =>
      __$$_UserDetailsCopyWithImpl<_$_UserDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String fullName, Gender gender, DateTime birthdayDate,
            int kidsCount, String email, RelationshipStatus? relationshipStatus)
        $default, {
    required TResult Function(
            String fullName,
            UserCredentials userCredentials,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            RelationshipStatus? relationshipStatus)
        withCredentials,
  }) {
    return $default(
        fullName, gender, birthdayDate, kidsCount, email, relationshipStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String fullName,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            String email,
            RelationshipStatus? relationshipStatus)?
        $default, {
    TResult? Function(
            String fullName,
            UserCredentials userCredentials,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            RelationshipStatus? relationshipStatus)?
        withCredentials,
  }) {
    return $default?.call(
        fullName, gender, birthdayDate, kidsCount, email, relationshipStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String fullName,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            String email,
            RelationshipStatus? relationshipStatus)?
        $default, {
    TResult Function(
            String fullName,
            UserCredentials userCredentials,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            RelationshipStatus? relationshipStatus)?
        withCredentials,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          fullName, gender, birthdayDate, kidsCount, email, relationshipStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserDetails value) $default, {
    required TResult Function(UserDetailsWithCredentials value) withCredentials,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserDetails value)? $default, {
    TResult? Function(UserDetailsWithCredentials value)? withCredentials,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserDetails value)? $default, {
    TResult Function(UserDetailsWithCredentials value)? withCredentials,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailsToJson(
      this,
    );
  }
}

abstract class _UserDetails implements UserDetails {
  const factory _UserDetails(
      {required final String fullName,
      required final Gender gender,
      required final DateTime birthdayDate,
      required final int kidsCount,
      required final String email,
      final RelationshipStatus? relationshipStatus}) = _$_UserDetails;

  factory _UserDetails.fromJson(Map<String, dynamic> json) =
      _$_UserDetails.fromJson;

  @override
  String get fullName;
  @override
  Gender get gender;
  @override
  DateTime get birthdayDate;
  @override
  int get kidsCount;
  String get email;
  @override
  RelationshipStatus? get relationshipStatus;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailsCopyWith<_$_UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDetailsWithCredentialsCopyWith<$Res>
    implements $UserDetailsCopyWith<$Res> {
  factory _$$UserDetailsWithCredentialsCopyWith(
          _$UserDetailsWithCredentials value,
          $Res Function(_$UserDetailsWithCredentials) then) =
      __$$UserDetailsWithCredentialsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullName,
      UserCredentials userCredentials,
      Gender gender,
      DateTime birthdayDate,
      int kidsCount,
      RelationshipStatus? relationshipStatus});

  $UserCredentialsCopyWith<$Res> get userCredentials;
}

/// @nodoc
class __$$UserDetailsWithCredentialsCopyWithImpl<$Res>
    extends _$UserDetailsCopyWithImpl<$Res, _$UserDetailsWithCredentials>
    implements _$$UserDetailsWithCredentialsCopyWith<$Res> {
  __$$UserDetailsWithCredentialsCopyWithImpl(
      _$UserDetailsWithCredentials _value,
      $Res Function(_$UserDetailsWithCredentials) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? userCredentials = null,
    Object? gender = null,
    Object? birthdayDate = null,
    Object? kidsCount = null,
    Object? relationshipStatus = freezed,
  }) {
    return _then(_$UserDetailsWithCredentials(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      userCredentials: null == userCredentials
          ? _value.userCredentials
          : userCredentials // ignore: cast_nullable_to_non_nullable
              as UserCredentials,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birthdayDate: null == birthdayDate
          ? _value.birthdayDate
          : birthdayDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      kidsCount: null == kidsCount
          ? _value.kidsCount
          : kidsCount // ignore: cast_nullable_to_non_nullable
              as int,
      relationshipStatus: freezed == relationshipStatus
          ? _value.relationshipStatus
          : relationshipStatus // ignore: cast_nullable_to_non_nullable
              as RelationshipStatus?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCredentialsCopyWith<$Res> get userCredentials {
    return $UserCredentialsCopyWith<$Res>(_value.userCredentials, (value) {
      return _then(_value.copyWith(userCredentials: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailsWithCredentials implements UserDetailsWithCredentials {
  const _$UserDetailsWithCredentials(
      {required this.fullName,
      required this.userCredentials,
      required this.gender,
      required this.birthdayDate,
      required this.kidsCount,
      this.relationshipStatus,
      final String? $type})
      : $type = $type ?? 'withCredentials';

  factory _$UserDetailsWithCredentials.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailsWithCredentialsFromJson(json);

  @override
  final String fullName;
  @override
  final UserCredentials userCredentials;
  @override
  final Gender gender;
  @override
  final DateTime birthdayDate;
  @override
  final int kidsCount;
  @override
  final RelationshipStatus? relationshipStatus;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserDetails.withCredentials(fullName: $fullName, userCredentials: $userCredentials, gender: $gender, birthdayDate: $birthdayDate, kidsCount: $kidsCount, relationshipStatus: $relationshipStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsWithCredentials &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.userCredentials, userCredentials) ||
                other.userCredentials == userCredentials) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthdayDate, birthdayDate) ||
                other.birthdayDate == birthdayDate) &&
            (identical(other.kidsCount, kidsCount) ||
                other.kidsCount == kidsCount) &&
            (identical(other.relationshipStatus, relationshipStatus) ||
                other.relationshipStatus == relationshipStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, userCredentials,
      gender, birthdayDate, kidsCount, relationshipStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsWithCredentialsCopyWith<_$UserDetailsWithCredentials>
      get copyWith => __$$UserDetailsWithCredentialsCopyWithImpl<
          _$UserDetailsWithCredentials>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String fullName, Gender gender, DateTime birthdayDate,
            int kidsCount, String email, RelationshipStatus? relationshipStatus)
        $default, {
    required TResult Function(
            String fullName,
            UserCredentials userCredentials,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            RelationshipStatus? relationshipStatus)
        withCredentials,
  }) {
    return withCredentials(fullName, userCredentials, gender, birthdayDate,
        kidsCount, relationshipStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String fullName,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            String email,
            RelationshipStatus? relationshipStatus)?
        $default, {
    TResult? Function(
            String fullName,
            UserCredentials userCredentials,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            RelationshipStatus? relationshipStatus)?
        withCredentials,
  }) {
    return withCredentials?.call(fullName, userCredentials, gender,
        birthdayDate, kidsCount, relationshipStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String fullName,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            String email,
            RelationshipStatus? relationshipStatus)?
        $default, {
    TResult Function(
            String fullName,
            UserCredentials userCredentials,
            Gender gender,
            DateTime birthdayDate,
            int kidsCount,
            RelationshipStatus? relationshipStatus)?
        withCredentials,
    required TResult orElse(),
  }) {
    if (withCredentials != null) {
      return withCredentials(fullName, userCredentials, gender, birthdayDate,
          kidsCount, relationshipStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserDetails value) $default, {
    required TResult Function(UserDetailsWithCredentials value) withCredentials,
  }) {
    return withCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserDetails value)? $default, {
    TResult? Function(UserDetailsWithCredentials value)? withCredentials,
  }) {
    return withCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserDetails value)? $default, {
    TResult Function(UserDetailsWithCredentials value)? withCredentials,
    required TResult orElse(),
  }) {
    if (withCredentials != null) {
      return withCredentials(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailsWithCredentialsToJson(
      this,
    );
  }
}

abstract class UserDetailsWithCredentials implements UserDetails {
  const factory UserDetailsWithCredentials(
          {required final String fullName,
          required final UserCredentials userCredentials,
          required final Gender gender,
          required final DateTime birthdayDate,
          required final int kidsCount,
          final RelationshipStatus? relationshipStatus}) =
      _$UserDetailsWithCredentials;

  factory UserDetailsWithCredentials.fromJson(Map<String, dynamic> json) =
      _$UserDetailsWithCredentials.fromJson;

  @override
  String get fullName;
  UserCredentials get userCredentials;
  @override
  Gender get gender;
  @override
  DateTime get birthdayDate;
  @override
  int get kidsCount;
  @override
  RelationshipStatus? get relationshipStatus;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsWithCredentialsCopyWith<_$UserDetailsWithCredentials>
      get copyWith => throw _privateConstructorUsedError;
}
