// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Hotel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  (double, double) get coordinates => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelCopyWith<Hotel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelCopyWith<$Res> {
  factory $HotelCopyWith(Hotel value, $Res Function(Hotel) then) =
      _$HotelCopyWithImpl<$Res, Hotel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String country,
      String city,
      List<String> images,
      String description,
      (double, double) coordinates,
      DateTime createdAt});
}

/// @nodoc
class _$HotelCopyWithImpl<$Res, $Val extends Hotel>
    implements $HotelCopyWith<$Res> {
  _$HotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? city = null,
    Object? images = null,
    Object? description = null,
    Object? coordinates = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as (double, double),
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HotelCopyWith<$Res> implements $HotelCopyWith<$Res> {
  factory _$$_HotelCopyWith(_$_Hotel value, $Res Function(_$_Hotel) then) =
      __$$_HotelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String country,
      String city,
      List<String> images,
      String description,
      (double, double) coordinates,
      DateTime createdAt});
}

/// @nodoc
class __$$_HotelCopyWithImpl<$Res> extends _$HotelCopyWithImpl<$Res, _$_Hotel>
    implements _$$_HotelCopyWith<$Res> {
  __$$_HotelCopyWithImpl(_$_Hotel _value, $Res Function(_$_Hotel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? city = null,
    Object? images = null,
    Object? description = null,
    Object? coordinates = null,
    Object? createdAt = null,
  }) {
    return _then(_$_Hotel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as (double, double),
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Hotel implements _Hotel {
  const _$_Hotel(
      {required this.id,
      required this.name,
      required this.country,
      required this.city,
      required final List<String> images,
      required this.description,
      required this.coordinates,
      required this.createdAt})
      : _images = images;

  @override
  final String id;
  @override
  final String name;
  @override
  final String country;
  @override
  final String city;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String description;
  @override
  final (double, double) coordinates;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Hotel(id: $id, name: $name, country: $country, city: $city, images: $images, description: $description, coordinates: $coordinates, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hotel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      country,
      city,
      const DeepCollectionEquality().hash(_images),
      description,
      coordinates,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelCopyWith<_$_Hotel> get copyWith =>
      __$$_HotelCopyWithImpl<_$_Hotel>(this, _$identity);
}

abstract class _Hotel implements Hotel {
  const factory _Hotel(
      {required final String id,
      required final String name,
      required final String country,
      required final String city,
      required final List<String> images,
      required final String description,
      required final (double, double) coordinates,
      required final DateTime createdAt}) = _$_Hotel;

  @override
  String get id;
  @override
  String get name;
  @override
  String get country;
  @override
  String get city;
  @override
  List<String> get images;
  @override
  String get description;
  @override
  (double, double) get coordinates;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_HotelCopyWith<_$_Hotel> get copyWith =>
      throw _privateConstructorUsedError;
}
