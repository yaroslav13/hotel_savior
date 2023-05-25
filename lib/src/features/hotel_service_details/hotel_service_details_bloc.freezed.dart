// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_service_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelServiceDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Hotel hotel) started,
    required TResult Function(String header) descriptionSectionPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Hotel hotel)? started,
    TResult? Function(String header)? descriptionSectionPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Hotel hotel)? started,
    TResult Function(String header)? descriptionSectionPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DescriptionSectionPressed value)
        descriptionSectionPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DescriptionSectionPressed value)?
        descriptionSectionPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DescriptionSectionPressed value)?
        descriptionSectionPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelServiceDetailsEventCopyWith<$Res> {
  factory $HotelServiceDetailsEventCopyWith(HotelServiceDetailsEvent value,
          $Res Function(HotelServiceDetailsEvent) then) =
      _$HotelServiceDetailsEventCopyWithImpl<$Res, HotelServiceDetailsEvent>;
}

/// @nodoc
class _$HotelServiceDetailsEventCopyWithImpl<$Res,
        $Val extends HotelServiceDetailsEvent>
    implements $HotelServiceDetailsEventCopyWith<$Res> {
  _$HotelServiceDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({Hotel hotel});

  $HotelCopyWith<$Res> get hotel;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$HotelServiceDetailsEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotel = null,
  }) {
    return _then(_$_Started(
      hotel: null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as Hotel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelCopyWith<$Res> get hotel {
    return $HotelCopyWith<$Res>(_value.hotel, (value) {
      return _then(_value.copyWith(hotel: value));
    });
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.hotel});

  @override
  final Hotel hotel;

  @override
  String toString() {
    return 'HotelServiceDetailsEvent.started(hotel: $hotel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.hotel, hotel) || other.hotel == hotel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Hotel hotel) started,
    required TResult Function(String header) descriptionSectionPressed,
  }) {
    return started(hotel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Hotel hotel)? started,
    TResult? Function(String header)? descriptionSectionPressed,
  }) {
    return started?.call(hotel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Hotel hotel)? started,
    TResult Function(String header)? descriptionSectionPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(hotel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DescriptionSectionPressed value)
        descriptionSectionPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DescriptionSectionPressed value)?
        descriptionSectionPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DescriptionSectionPressed value)?
        descriptionSectionPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HotelServiceDetailsEvent {
  const factory _Started({required final Hotel hotel}) = _$_Started;

  Hotel get hotel;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DescriptionSectionPressedCopyWith<$Res> {
  factory _$$_DescriptionSectionPressedCopyWith(
          _$_DescriptionSectionPressed value,
          $Res Function(_$_DescriptionSectionPressed) then) =
      __$$_DescriptionSectionPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({String header});
}

/// @nodoc
class __$$_DescriptionSectionPressedCopyWithImpl<$Res>
    extends _$HotelServiceDetailsEventCopyWithImpl<$Res,
        _$_DescriptionSectionPressed>
    implements _$$_DescriptionSectionPressedCopyWith<$Res> {
  __$$_DescriptionSectionPressedCopyWithImpl(
      _$_DescriptionSectionPressed _value,
      $Res Function(_$_DescriptionSectionPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
  }) {
    return _then(_$_DescriptionSectionPressed(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionSectionPressed implements _DescriptionSectionPressed {
  const _$_DescriptionSectionPressed({required this.header});

  @override
  final String header;

  @override
  String toString() {
    return 'HotelServiceDetailsEvent.descriptionSectionPressed(header: $header)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DescriptionSectionPressed &&
            (identical(other.header, header) || other.header == header));
  }

  @override
  int get hashCode => Object.hash(runtimeType, header);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DescriptionSectionPressedCopyWith<_$_DescriptionSectionPressed>
      get copyWith => __$$_DescriptionSectionPressedCopyWithImpl<
          _$_DescriptionSectionPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Hotel hotel) started,
    required TResult Function(String header) descriptionSectionPressed,
  }) {
    return descriptionSectionPressed(header);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Hotel hotel)? started,
    TResult? Function(String header)? descriptionSectionPressed,
  }) {
    return descriptionSectionPressed?.call(header);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Hotel hotel)? started,
    TResult Function(String header)? descriptionSectionPressed,
    required TResult orElse(),
  }) {
    if (descriptionSectionPressed != null) {
      return descriptionSectionPressed(header);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DescriptionSectionPressed value)
        descriptionSectionPressed,
  }) {
    return descriptionSectionPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DescriptionSectionPressed value)?
        descriptionSectionPressed,
  }) {
    return descriptionSectionPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DescriptionSectionPressed value)?
        descriptionSectionPressed,
    required TResult orElse(),
  }) {
    if (descriptionSectionPressed != null) {
      return descriptionSectionPressed(this);
    }
    return orElse();
  }
}

abstract class _DescriptionSectionPressed implements HotelServiceDetailsEvent {
  const factory _DescriptionSectionPressed({required final String header}) =
      _$_DescriptionSectionPressed;

  String get header;
  @JsonKey(ignore: true)
  _$$_DescriptionSectionPressedCopyWith<_$_DescriptionSectionPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HotelServiceDetailsState {
  String? get address => throw _privateConstructorUsedError;
  List<String> get selectedDescriptionSections =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelServiceDetailsStateCopyWith<HotelServiceDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelServiceDetailsStateCopyWith<$Res> {
  factory $HotelServiceDetailsStateCopyWith(HotelServiceDetailsState value,
          $Res Function(HotelServiceDetailsState) then) =
      _$HotelServiceDetailsStateCopyWithImpl<$Res, HotelServiceDetailsState>;
  @useResult
  $Res call({String? address, List<String> selectedDescriptionSections});
}

/// @nodoc
class _$HotelServiceDetailsStateCopyWithImpl<$Res,
        $Val extends HotelServiceDetailsState>
    implements $HotelServiceDetailsStateCopyWith<$Res> {
  _$HotelServiceDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? selectedDescriptionSections = null,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDescriptionSections: null == selectedDescriptionSections
          ? _value.selectedDescriptionSections
          : selectedDescriptionSections // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HotelServiceDetailsStateCopyWith<$Res>
    implements $HotelServiceDetailsStateCopyWith<$Res> {
  factory _$$_HotelServiceDetailsStateCopyWith(
          _$_HotelServiceDetailsState value,
          $Res Function(_$_HotelServiceDetailsState) then) =
      __$$_HotelServiceDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? address, List<String> selectedDescriptionSections});
}

/// @nodoc
class __$$_HotelServiceDetailsStateCopyWithImpl<$Res>
    extends _$HotelServiceDetailsStateCopyWithImpl<$Res,
        _$_HotelServiceDetailsState>
    implements _$$_HotelServiceDetailsStateCopyWith<$Res> {
  __$$_HotelServiceDetailsStateCopyWithImpl(_$_HotelServiceDetailsState _value,
      $Res Function(_$_HotelServiceDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? selectedDescriptionSections = null,
  }) {
    return _then(_$_HotelServiceDetailsState(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDescriptionSections: null == selectedDescriptionSections
          ? _value._selectedDescriptionSections
          : selectedDescriptionSections // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_HotelServiceDetailsState implements _HotelServiceDetailsState {
  const _$_HotelServiceDetailsState(
      {this.address,
      final List<String> selectedDescriptionSections = const <String>[]})
      : _selectedDescriptionSections = selectedDescriptionSections;

  @override
  final String? address;
  final List<String> _selectedDescriptionSections;
  @override
  @JsonKey()
  List<String> get selectedDescriptionSections {
    if (_selectedDescriptionSections is EqualUnmodifiableListView)
      return _selectedDescriptionSections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedDescriptionSections);
  }

  @override
  String toString() {
    return 'HotelServiceDetailsState(address: $address, selectedDescriptionSections: $selectedDescriptionSections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelServiceDetailsState &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(
                other._selectedDescriptionSections,
                _selectedDescriptionSections));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address,
      const DeepCollectionEquality().hash(_selectedDescriptionSections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelServiceDetailsStateCopyWith<_$_HotelServiceDetailsState>
      get copyWith => __$$_HotelServiceDetailsStateCopyWithImpl<
          _$_HotelServiceDetailsState>(this, _$identity);
}

abstract class _HotelServiceDetailsState implements HotelServiceDetailsState {
  const factory _HotelServiceDetailsState(
          {final String? address,
          final List<String> selectedDescriptionSections}) =
      _$_HotelServiceDetailsState;

  @override
  String? get address;
  @override
  List<String> get selectedDescriptionSections;
  @override
  @JsonKey(ignore: true)
  _$$_HotelServiceDetailsStateCopyWith<_$_HotelServiceDetailsState>
      get copyWith => throw _privateConstructorUsedError;
}
