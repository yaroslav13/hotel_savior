// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelService _$HotelServiceFromJson(Map<String, dynamic> json) {
  return _HotelService.fromJson(json);
}

/// @nodoc
mixin _$HotelService {
  String get name => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get hotelId => throw _privateConstructorUsedError;
  HotelServiceType get serviceType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelServiceCopyWith<HotelService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelServiceCopyWith<$Res> {
  factory $HotelServiceCopyWith(
          HotelService value, $Res Function(HotelService) then) =
      _$HotelServiceCopyWithImpl<$Res, HotelService>;
  @useResult
  $Res call(
      {String name,
      List<String> images,
      String description,
      String hotelId,
      HotelServiceType serviceType});
}

/// @nodoc
class _$HotelServiceCopyWithImpl<$Res, $Val extends HotelService>
    implements $HotelServiceCopyWith<$Res> {
  _$HotelServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? images = null,
    Object? description = null,
    Object? hotelId = null,
    Object? serviceType = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as HotelServiceType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HotelServiceCopyWith<$Res>
    implements $HotelServiceCopyWith<$Res> {
  factory _$$_HotelServiceCopyWith(
          _$_HotelService value, $Res Function(_$_HotelService) then) =
      __$$_HotelServiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<String> images,
      String description,
      String hotelId,
      HotelServiceType serviceType});
}

/// @nodoc
class __$$_HotelServiceCopyWithImpl<$Res>
    extends _$HotelServiceCopyWithImpl<$Res, _$_HotelService>
    implements _$$_HotelServiceCopyWith<$Res> {
  __$$_HotelServiceCopyWithImpl(
      _$_HotelService _value, $Res Function(_$_HotelService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? images = null,
    Object? description = null,
    Object? hotelId = null,
    Object? serviceType = null,
  }) {
    return _then(_$_HotelService(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as HotelServiceType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HotelService implements _HotelService {
  const _$_HotelService(
      {required this.name,
      required final List<String> images,
      required this.description,
      required this.hotelId,
      required this.serviceType})
      : _images = images;

  factory _$_HotelService.fromJson(Map<String, dynamic> json) =>
      _$$_HotelServiceFromJson(json);

  @override
  final String name;
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
  final String hotelId;
  @override
  final HotelServiceType serviceType;

  @override
  String toString() {
    return 'HotelService(name: $name, images: $images, description: $description, hotelId: $hotelId, serviceType: $serviceType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelService &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_images),
      description,
      hotelId,
      serviceType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelServiceCopyWith<_$_HotelService> get copyWith =>
      __$$_HotelServiceCopyWithImpl<_$_HotelService>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelServiceToJson(
      this,
    );
  }
}

abstract class _HotelService implements HotelService {
  const factory _HotelService(
      {required final String name,
      required final List<String> images,
      required final String description,
      required final String hotelId,
      required final HotelServiceType serviceType}) = _$_HotelService;

  factory _HotelService.fromJson(Map<String, dynamic> json) =
      _$_HotelService.fromJson;

  @override
  String get name;
  @override
  List<String> get images;
  @override
  String get description;
  @override
  String get hotelId;
  @override
  HotelServiceType get serviceType;
  @override
  @JsonKey(ignore: true)
  _$$_HotelServiceCopyWith<_$_HotelService> get copyWith =>
      throw _privateConstructorUsedError;
}
