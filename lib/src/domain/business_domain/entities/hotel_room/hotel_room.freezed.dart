// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelRoom _$HotelRoomFromJson(Map<String, dynamic> json) {
  return _HotelRoom.fromJson(json);
}

/// @nodoc
mixin _$HotelRoom {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  String get hotelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelRoomCopyWith<HotelRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelRoomCopyWith<$Res> {
  factory $HotelRoomCopyWith(HotelRoom value, $Res Function(HotelRoom) then) =
      _$HotelRoomCopyWithImpl<$Res, HotelRoom>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<String> images,
      int capacity,
      String hotelId});
}

/// @nodoc
class _$HotelRoomCopyWithImpl<$Res, $Val extends HotelRoom>
    implements $HotelRoomCopyWith<$Res> {
  _$HotelRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? images = null,
    Object? capacity = null,
    Object? hotelId = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HotelRoomCopyWith<$Res> implements $HotelRoomCopyWith<$Res> {
  factory _$$_HotelRoomCopyWith(
          _$_HotelRoom value, $Res Function(_$_HotelRoom) then) =
      __$$_HotelRoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<String> images,
      int capacity,
      String hotelId});
}

/// @nodoc
class __$$_HotelRoomCopyWithImpl<$Res>
    extends _$HotelRoomCopyWithImpl<$Res, _$_HotelRoom>
    implements _$$_HotelRoomCopyWith<$Res> {
  __$$_HotelRoomCopyWithImpl(
      _$_HotelRoom _value, $Res Function(_$_HotelRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? images = null,
    Object? capacity = null,
    Object? hotelId = null,
  }) {
    return _then(_$_HotelRoom(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HotelRoom implements _HotelRoom {
  const _$_HotelRoom(
      {required this.id,
      required this.name,
      required this.description,
      required final List<String> images,
      required this.capacity,
      required this.hotelId})
      : _images = images;

  factory _$_HotelRoom.fromJson(Map<String, dynamic> json) =>
      _$$_HotelRoomFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final int capacity;
  @override
  final String hotelId;

  @override
  String toString() {
    return 'HotelRoom(id: $id, name: $name, description: $description, images: $images, capacity: $capacity, hotelId: $hotelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelRoom &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      const DeepCollectionEquality().hash(_images), capacity, hotelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelRoomCopyWith<_$_HotelRoom> get copyWith =>
      __$$_HotelRoomCopyWithImpl<_$_HotelRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelRoomToJson(
      this,
    );
  }
}

abstract class _HotelRoom implements HotelRoom {
  const factory _HotelRoom(
      {required final String id,
      required final String name,
      required final String description,
      required final List<String> images,
      required final int capacity,
      required final String hotelId}) = _$_HotelRoom;

  factory _HotelRoom.fromJson(Map<String, dynamic> json) =
      _$_HotelRoom.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  List<String> get images;
  @override
  int get capacity;
  @override
  String get hotelId;
  @override
  @JsonKey(ignore: true)
  _$$_HotelRoomCopyWith<_$_HotelRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
