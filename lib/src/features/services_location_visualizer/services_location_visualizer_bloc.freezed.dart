// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services_location_visualizer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServicesLocationVisualizerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExploreCategory exploreCategory) started,
    required TResult Function((Hotel, HotelService) selectedHotelService)
        onServiceSelected,
    required TResult Function(Hotel selectedHotel) onHotelSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExploreCategory exploreCategory)? started,
    TResult? Function((Hotel, HotelService) selectedHotelService)?
        onServiceSelected,
    TResult? Function(Hotel selectedHotel)? onHotelSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExploreCategory exploreCategory)? started,
    TResult Function((Hotel, HotelService) selectedHotelService)?
        onServiceSelected,
    TResult Function(Hotel selectedHotel)? onHotelSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnServiceSelected value) onServiceSelected,
    required TResult Function(_OnHotelSelected value) onHotelSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnServiceSelected value)? onServiceSelected,
    TResult? Function(_OnHotelSelected value)? onHotelSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnServiceSelected value)? onServiceSelected,
    TResult Function(_OnHotelSelected value)? onHotelSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesLocationVisualizerEventCopyWith<$Res> {
  factory $ServicesLocationVisualizerEventCopyWith(
          ServicesLocationVisualizerEvent value,
          $Res Function(ServicesLocationVisualizerEvent) then) =
      _$ServicesLocationVisualizerEventCopyWithImpl<$Res,
          ServicesLocationVisualizerEvent>;
}

/// @nodoc
class _$ServicesLocationVisualizerEventCopyWithImpl<$Res,
        $Val extends ServicesLocationVisualizerEvent>
    implements $ServicesLocationVisualizerEventCopyWith<$Res> {
  _$ServicesLocationVisualizerEventCopyWithImpl(this._value, this._then);

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
  $Res call({ExploreCategory exploreCategory});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ServicesLocationVisualizerEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exploreCategory = null,
  }) {
    return _then(_$_Started(
      exploreCategory: null == exploreCategory
          ? _value.exploreCategory
          : exploreCategory // ignore: cast_nullable_to_non_nullable
              as ExploreCategory,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.exploreCategory});

  @override
  final ExploreCategory exploreCategory;

  @override
  String toString() {
    return 'ServicesLocationVisualizerEvent.started(exploreCategory: $exploreCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.exploreCategory, exploreCategory) ||
                other.exploreCategory == exploreCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exploreCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExploreCategory exploreCategory) started,
    required TResult Function((Hotel, HotelService) selectedHotelService)
        onServiceSelected,
    required TResult Function(Hotel selectedHotel) onHotelSelected,
  }) {
    return started(exploreCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExploreCategory exploreCategory)? started,
    TResult? Function((Hotel, HotelService) selectedHotelService)?
        onServiceSelected,
    TResult? Function(Hotel selectedHotel)? onHotelSelected,
  }) {
    return started?.call(exploreCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExploreCategory exploreCategory)? started,
    TResult Function((Hotel, HotelService) selectedHotelService)?
        onServiceSelected,
    TResult Function(Hotel selectedHotel)? onHotelSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(exploreCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnServiceSelected value) onServiceSelected,
    required TResult Function(_OnHotelSelected value) onHotelSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnServiceSelected value)? onServiceSelected,
    TResult? Function(_OnHotelSelected value)? onHotelSelected,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnServiceSelected value)? onServiceSelected,
    TResult Function(_OnHotelSelected value)? onHotelSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ServicesLocationVisualizerEvent {
  const factory _Started({required final ExploreCategory exploreCategory}) =
      _$_Started;

  ExploreCategory get exploreCategory;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnServiceSelectedCopyWith<$Res> {
  factory _$$_OnServiceSelectedCopyWith(_$_OnServiceSelected value,
          $Res Function(_$_OnServiceSelected) then) =
      __$$_OnServiceSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({(Hotel, HotelService) selectedHotelService});
}

/// @nodoc
class __$$_OnServiceSelectedCopyWithImpl<$Res>
    extends _$ServicesLocationVisualizerEventCopyWithImpl<$Res,
        _$_OnServiceSelected> implements _$$_OnServiceSelectedCopyWith<$Res> {
  __$$_OnServiceSelectedCopyWithImpl(
      _$_OnServiceSelected _value, $Res Function(_$_OnServiceSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedHotelService = null,
  }) {
    return _then(_$_OnServiceSelected(
      selectedHotelService: null == selectedHotelService
          ? _value.selectedHotelService
          : selectedHotelService // ignore: cast_nullable_to_non_nullable
              as (Hotel, HotelService),
    ));
  }
}

/// @nodoc

class _$_OnServiceSelected implements _OnServiceSelected {
  const _$_OnServiceSelected({required this.selectedHotelService});

  @override
  final (Hotel, HotelService) selectedHotelService;

  @override
  String toString() {
    return 'ServicesLocationVisualizerEvent.onServiceSelected(selectedHotelService: $selectedHotelService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnServiceSelected &&
            (identical(other.selectedHotelService, selectedHotelService) ||
                other.selectedHotelService == selectedHotelService));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedHotelService);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnServiceSelectedCopyWith<_$_OnServiceSelected> get copyWith =>
      __$$_OnServiceSelectedCopyWithImpl<_$_OnServiceSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExploreCategory exploreCategory) started,
    required TResult Function((Hotel, HotelService) selectedHotelService)
        onServiceSelected,
    required TResult Function(Hotel selectedHotel) onHotelSelected,
  }) {
    return onServiceSelected(selectedHotelService);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExploreCategory exploreCategory)? started,
    TResult? Function((Hotel, HotelService) selectedHotelService)?
        onServiceSelected,
    TResult? Function(Hotel selectedHotel)? onHotelSelected,
  }) {
    return onServiceSelected?.call(selectedHotelService);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExploreCategory exploreCategory)? started,
    TResult Function((Hotel, HotelService) selectedHotelService)?
        onServiceSelected,
    TResult Function(Hotel selectedHotel)? onHotelSelected,
    required TResult orElse(),
  }) {
    if (onServiceSelected != null) {
      return onServiceSelected(selectedHotelService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnServiceSelected value) onServiceSelected,
    required TResult Function(_OnHotelSelected value) onHotelSelected,
  }) {
    return onServiceSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnServiceSelected value)? onServiceSelected,
    TResult? Function(_OnHotelSelected value)? onHotelSelected,
  }) {
    return onServiceSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnServiceSelected value)? onServiceSelected,
    TResult Function(_OnHotelSelected value)? onHotelSelected,
    required TResult orElse(),
  }) {
    if (onServiceSelected != null) {
      return onServiceSelected(this);
    }
    return orElse();
  }
}

abstract class _OnServiceSelected implements ServicesLocationVisualizerEvent {
  const factory _OnServiceSelected(
          {required final (Hotel, HotelService) selectedHotelService}) =
      _$_OnServiceSelected;

  (Hotel, HotelService) get selectedHotelService;
  @JsonKey(ignore: true)
  _$$_OnServiceSelectedCopyWith<_$_OnServiceSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnHotelSelectedCopyWith<$Res> {
  factory _$$_OnHotelSelectedCopyWith(
          _$_OnHotelSelected value, $Res Function(_$_OnHotelSelected) then) =
      __$$_OnHotelSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Hotel selectedHotel});

  $HotelCopyWith<$Res> get selectedHotel;
}

/// @nodoc
class __$$_OnHotelSelectedCopyWithImpl<$Res>
    extends _$ServicesLocationVisualizerEventCopyWithImpl<$Res,
        _$_OnHotelSelected> implements _$$_OnHotelSelectedCopyWith<$Res> {
  __$$_OnHotelSelectedCopyWithImpl(
      _$_OnHotelSelected _value, $Res Function(_$_OnHotelSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedHotel = null,
  }) {
    return _then(_$_OnHotelSelected(
      selectedHotel: null == selectedHotel
          ? _value.selectedHotel
          : selectedHotel // ignore: cast_nullable_to_non_nullable
              as Hotel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelCopyWith<$Res> get selectedHotel {
    return $HotelCopyWith<$Res>(_value.selectedHotel, (value) {
      return _then(_value.copyWith(selectedHotel: value));
    });
  }
}

/// @nodoc

class _$_OnHotelSelected implements _OnHotelSelected {
  const _$_OnHotelSelected({required this.selectedHotel});

  @override
  final Hotel selectedHotel;

  @override
  String toString() {
    return 'ServicesLocationVisualizerEvent.onHotelSelected(selectedHotel: $selectedHotel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnHotelSelected &&
            (identical(other.selectedHotel, selectedHotel) ||
                other.selectedHotel == selectedHotel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedHotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnHotelSelectedCopyWith<_$_OnHotelSelected> get copyWith =>
      __$$_OnHotelSelectedCopyWithImpl<_$_OnHotelSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExploreCategory exploreCategory) started,
    required TResult Function((Hotel, HotelService) selectedHotelService)
        onServiceSelected,
    required TResult Function(Hotel selectedHotel) onHotelSelected,
  }) {
    return onHotelSelected(selectedHotel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExploreCategory exploreCategory)? started,
    TResult? Function((Hotel, HotelService) selectedHotelService)?
        onServiceSelected,
    TResult? Function(Hotel selectedHotel)? onHotelSelected,
  }) {
    return onHotelSelected?.call(selectedHotel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExploreCategory exploreCategory)? started,
    TResult Function((Hotel, HotelService) selectedHotelService)?
        onServiceSelected,
    TResult Function(Hotel selectedHotel)? onHotelSelected,
    required TResult orElse(),
  }) {
    if (onHotelSelected != null) {
      return onHotelSelected(selectedHotel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnServiceSelected value) onServiceSelected,
    required TResult Function(_OnHotelSelected value) onHotelSelected,
  }) {
    return onHotelSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnServiceSelected value)? onServiceSelected,
    TResult? Function(_OnHotelSelected value)? onHotelSelected,
  }) {
    return onHotelSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnServiceSelected value)? onServiceSelected,
    TResult Function(_OnHotelSelected value)? onHotelSelected,
    required TResult orElse(),
  }) {
    if (onHotelSelected != null) {
      return onHotelSelected(this);
    }
    return orElse();
  }
}

abstract class _OnHotelSelected implements ServicesLocationVisualizerEvent {
  const factory _OnHotelSelected({required final Hotel selectedHotel}) =
      _$_OnHotelSelected;

  Hotel get selectedHotel;
  @JsonKey(ignore: true)
  _$$_OnHotelSelectedCopyWith<_$_OnHotelSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServicesLocationVisualizerState {
  List<(Hotel, HotelService)> get hotelsServices =>
      throw _privateConstructorUsedError;
  List<Hotel> get hotels => throw _privateConstructorUsedError;
  Hotel? get selectedHotel => throw _privateConstructorUsedError;
  (Hotel, HotelService)? get selectedHotelService =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessageLocaleKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServicesLocationVisualizerStateCopyWith<ServicesLocationVisualizerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesLocationVisualizerStateCopyWith<$Res> {
  factory $ServicesLocationVisualizerStateCopyWith(
          ServicesLocationVisualizerState value,
          $Res Function(ServicesLocationVisualizerState) then) =
      _$ServicesLocationVisualizerStateCopyWithImpl<$Res,
          ServicesLocationVisualizerState>;
  @useResult
  $Res call(
      {List<(Hotel, HotelService)> hotelsServices,
      List<Hotel> hotels,
      Hotel? selectedHotel,
      (Hotel, HotelService)? selectedHotelService,
      bool isLoading,
      String? errorMessageLocaleKey});

  $HotelCopyWith<$Res>? get selectedHotel;
}

/// @nodoc
class _$ServicesLocationVisualizerStateCopyWithImpl<$Res,
        $Val extends ServicesLocationVisualizerState>
    implements $ServicesLocationVisualizerStateCopyWith<$Res> {
  _$ServicesLocationVisualizerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelsServices = null,
    Object? hotels = null,
    Object? selectedHotel = freezed,
    Object? selectedHotelService = freezed,
    Object? isLoading = null,
    Object? errorMessageLocaleKey = freezed,
  }) {
    return _then(_value.copyWith(
      hotelsServices: null == hotelsServices
          ? _value.hotelsServices
          : hotelsServices // ignore: cast_nullable_to_non_nullable
              as List<(Hotel, HotelService)>,
      hotels: null == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>,
      selectedHotel: freezed == selectedHotel
          ? _value.selectedHotel
          : selectedHotel // ignore: cast_nullable_to_non_nullable
              as Hotel?,
      selectedHotelService: freezed == selectedHotelService
          ? _value.selectedHotelService
          : selectedHotelService // ignore: cast_nullable_to_non_nullable
              as (Hotel, HotelService)?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessageLocaleKey: freezed == errorMessageLocaleKey
          ? _value.errorMessageLocaleKey
          : errorMessageLocaleKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelCopyWith<$Res>? get selectedHotel {
    if (_value.selectedHotel == null) {
      return null;
    }

    return $HotelCopyWith<$Res>(_value.selectedHotel!, (value) {
      return _then(_value.copyWith(selectedHotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ServicesLocationVisualizerStateCopyWith<$Res>
    implements $ServicesLocationVisualizerStateCopyWith<$Res> {
  factory _$$_ServicesLocationVisualizerStateCopyWith(
          _$_ServicesLocationVisualizerState value,
          $Res Function(_$_ServicesLocationVisualizerState) then) =
      __$$_ServicesLocationVisualizerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<(Hotel, HotelService)> hotelsServices,
      List<Hotel> hotels,
      Hotel? selectedHotel,
      (Hotel, HotelService)? selectedHotelService,
      bool isLoading,
      String? errorMessageLocaleKey});

  @override
  $HotelCopyWith<$Res>? get selectedHotel;
}

/// @nodoc
class __$$_ServicesLocationVisualizerStateCopyWithImpl<$Res>
    extends _$ServicesLocationVisualizerStateCopyWithImpl<$Res,
        _$_ServicesLocationVisualizerState>
    implements _$$_ServicesLocationVisualizerStateCopyWith<$Res> {
  __$$_ServicesLocationVisualizerStateCopyWithImpl(
      _$_ServicesLocationVisualizerState _value,
      $Res Function(_$_ServicesLocationVisualizerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelsServices = null,
    Object? hotels = null,
    Object? selectedHotel = freezed,
    Object? selectedHotelService = freezed,
    Object? isLoading = null,
    Object? errorMessageLocaleKey = freezed,
  }) {
    return _then(_$_ServicesLocationVisualizerState(
      hotelsServices: null == hotelsServices
          ? _value._hotelsServices
          : hotelsServices // ignore: cast_nullable_to_non_nullable
              as List<(Hotel, HotelService)>,
      hotels: null == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>,
      selectedHotel: freezed == selectedHotel
          ? _value.selectedHotel
          : selectedHotel // ignore: cast_nullable_to_non_nullable
              as Hotel?,
      selectedHotelService: freezed == selectedHotelService
          ? _value.selectedHotelService
          : selectedHotelService // ignore: cast_nullable_to_non_nullable
              as (Hotel, HotelService)?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessageLocaleKey: freezed == errorMessageLocaleKey
          ? _value.errorMessageLocaleKey
          : errorMessageLocaleKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ServicesLocationVisualizerState
    implements _ServicesLocationVisualizerState {
  const _$_ServicesLocationVisualizerState(
      {final List<(Hotel, HotelService)> hotelsServices = const <(
        Hotel,
        HotelService
      )>[],
      final List<Hotel> hotels = const <Hotel>[],
      this.selectedHotel,
      this.selectedHotelService,
      this.isLoading = false,
      this.errorMessageLocaleKey})
      : _hotelsServices = hotelsServices,
        _hotels = hotels;

  final List<(Hotel, HotelService)> _hotelsServices;
  @override
  @JsonKey()
  List<(Hotel, HotelService)> get hotelsServices {
    if (_hotelsServices is EqualUnmodifiableListView) return _hotelsServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotelsServices);
  }

  final List<Hotel> _hotels;
  @override
  @JsonKey()
  List<Hotel> get hotels {
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotels);
  }

  @override
  final Hotel? selectedHotel;
  @override
  final (Hotel, HotelService)? selectedHotelService;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessageLocaleKey;

  @override
  String toString() {
    return 'ServicesLocationVisualizerState(hotelsServices: $hotelsServices, hotels: $hotels, selectedHotel: $selectedHotel, selectedHotelService: $selectedHotelService, isLoading: $isLoading, errorMessageLocaleKey: $errorMessageLocaleKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServicesLocationVisualizerState &&
            const DeepCollectionEquality()
                .equals(other._hotelsServices, _hotelsServices) &&
            const DeepCollectionEquality().equals(other._hotels, _hotels) &&
            (identical(other.selectedHotel, selectedHotel) ||
                other.selectedHotel == selectedHotel) &&
            (identical(other.selectedHotelService, selectedHotelService) ||
                other.selectedHotelService == selectedHotelService) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessageLocaleKey, errorMessageLocaleKey) ||
                other.errorMessageLocaleKey == errorMessageLocaleKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_hotelsServices),
      const DeepCollectionEquality().hash(_hotels),
      selectedHotel,
      selectedHotelService,
      isLoading,
      errorMessageLocaleKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServicesLocationVisualizerStateCopyWith<
          _$_ServicesLocationVisualizerState>
      get copyWith => __$$_ServicesLocationVisualizerStateCopyWithImpl<
          _$_ServicesLocationVisualizerState>(this, _$identity);
}

abstract class _ServicesLocationVisualizerState
    implements ServicesLocationVisualizerState {
  const factory _ServicesLocationVisualizerState(
          {final List<(Hotel, HotelService)> hotelsServices,
          final List<Hotel> hotels,
          final Hotel? selectedHotel,
          final (Hotel, HotelService)? selectedHotelService,
          final bool isLoading,
          final String? errorMessageLocaleKey}) =
      _$_ServicesLocationVisualizerState;

  @override
  List<(Hotel, HotelService)> get hotelsServices;
  @override
  List<Hotel> get hotels;
  @override
  Hotel? get selectedHotel;
  @override
  (Hotel, HotelService)? get selectedHotelService;
  @override
  bool get isLoading;
  @override
  String? get errorMessageLocaleKey;
  @override
  @JsonKey(ignore: true)
  _$$_ServicesLocationVisualizerStateCopyWith<
          _$_ServicesLocationVisualizerState>
      get copyWith => throw _privateConstructorUsedError;
}
