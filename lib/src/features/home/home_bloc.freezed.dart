// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$HomeState {
  List<Hotel> get newHotelsVenues => throw _privateConstructorUsedError;
  List<Hotel> get recommendedHotelsVenues => throw _privateConstructorUsedError;
  List<(Hotel, HotelService)> get hotelsGyms =>
      throw _privateConstructorUsedError;
  List<(Hotel, HotelService)> get hotelsRestaurants =>
      throw _privateConstructorUsedError;
  List<(Hotel, HotelService)> get hotelsSpas =>
      throw _privateConstructorUsedError;
  List<(Hotel, HotelService)> get hotelsPools =>
      throw _privateConstructorUsedError;
  List<(Hotel, HotelService)> get hotelsBars =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessageLocaleKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<Hotel> newHotelsVenues,
      List<Hotel> recommendedHotelsVenues,
      List<(Hotel, HotelService)> hotelsGyms,
      List<(Hotel, HotelService)> hotelsRestaurants,
      List<(Hotel, HotelService)> hotelsSpas,
      List<(Hotel, HotelService)> hotelsPools,
      List<(Hotel, HotelService)> hotelsBars,
      bool isLoading,
      String? errorMessageLocaleKey});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newHotelsVenues = null,
    Object? recommendedHotelsVenues = null,
    Object? hotelsGyms = null,
    Object? hotelsRestaurants = null,
    Object? hotelsSpas = null,
    Object? hotelsPools = null,
    Object? hotelsBars = null,
    Object? isLoading = null,
    Object? errorMessageLocaleKey = freezed,
  }) {
    return _then(_value.copyWith(
      newHotelsVenues: null == newHotelsVenues
          ? _value.newHotelsVenues
          : newHotelsVenues // ignore: cast_nullable_to_non_nullable
              as List<Hotel>,
      recommendedHotelsVenues: null == recommendedHotelsVenues
          ? _value.recommendedHotelsVenues
          : recommendedHotelsVenues // ignore: cast_nullable_to_non_nullable
              as List<Hotel>,
      hotelsGyms: null == hotelsGyms
          ? _value.hotelsGyms
          : hotelsGyms // ignore: cast_nullable_to_non_nullable
              as List<(Hotel, HotelService)>,
      hotelsRestaurants: null == hotelsRestaurants
          ? _value.hotelsRestaurants
          : hotelsRestaurants // ignore: cast_nullable_to_non_nullable
              as List<(Hotel, HotelService)>,
      hotelsSpas: null == hotelsSpas
          ? _value.hotelsSpas
          : hotelsSpas // ignore: cast_nullable_to_non_nullable
              as List<(Hotel, HotelService)>,
      hotelsPools: null == hotelsPools
          ? _value.hotelsPools
          : hotelsPools // ignore: cast_nullable_to_non_nullable
              as List<(Hotel, HotelService)>,
      hotelsBars: null == hotelsBars
          ? _value.hotelsBars
          : hotelsBars // ignore: cast_nullable_to_non_nullable
              as List<(Hotel, HotelService)>,
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
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Hotel> newHotelsVenues,
      List<Hotel> recommendedHotelsVenues,
      List<(Hotel, HotelService)> hotelsGyms,
      List<(Hotel, HotelService)> hotelsRestaurants,
      List<(Hotel, HotelService)> hotelsSpas,
      List<(Hotel, HotelService)> hotelsPools,
      List<(Hotel, HotelService)> hotelsBars,
      bool isLoading,
      String? errorMessageLocaleKey});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newHotelsVenues = null,
    Object? recommendedHotelsVenues = null,
    Object? hotelsGyms = null,
    Object? hotelsRestaurants = null,
    Object? hotelsSpas = null,
    Object? hotelsPools = null,
    Object? hotelsBars = null,
    Object? isLoading = null,
    Object? errorMessageLocaleKey = freezed,
  }) {
    return _then(_$_HomeState(
      newHotelsVenues: null == newHotelsVenues
          ? _value._newHotelsVenues
          : newHotelsVenues // ignore: cast_nullable_to_non_nullable
              as List<Hotel>,
      recommendedHotelsVenues: null == recommendedHotelsVenues
          ? _value._recommendedHotelsVenues
          : recommendedHotelsVenues // ignore: cast_nullable_to_non_nullable
              as List<Hotel>,
      hotelsGyms: null == hotelsGyms
          ? _value._hotelsGyms
          : hotelsGyms // ignore: cast_nullable_to_non_nullable
              as List<(Hotel, HotelService)>,
      hotelsRestaurants: null == hotelsRestaurants
          ? _value._hotelsRestaurants
          : hotelsRestaurants // ignore: cast_nullable_to_non_nullable
              as List<(Hotel, HotelService)>,
      hotelsSpas: null == hotelsSpas
          ? _value._hotelsSpas
          : hotelsSpas // ignore: cast_nullable_to_non_nullable
              as List<(Hotel, HotelService)>,
      hotelsPools: null == hotelsPools
          ? _value._hotelsPools
          : hotelsPools // ignore: cast_nullable_to_non_nullable
              as List<(Hotel, HotelService)>,
      hotelsBars: null == hotelsBars
          ? _value._hotelsBars
          : hotelsBars // ignore: cast_nullable_to_non_nullable
              as List<(Hotel, HotelService)>,
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

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {final List<Hotel> newHotelsVenues = const <Hotel>[],
      final List<Hotel> recommendedHotelsVenues = const <Hotel>[],
      final List<(Hotel, HotelService)> hotelsGyms = const <(
        Hotel,
        HotelService
      )>[],
      final List<(Hotel, HotelService)> hotelsRestaurants = const <(
        Hotel,
        HotelService
      )>[],
      final List<(Hotel, HotelService)> hotelsSpas = const <(
        Hotel,
        HotelService
      )>[],
      final List<(Hotel, HotelService)> hotelsPools = const <(
        Hotel,
        HotelService
      )>[],
      final List<(Hotel, HotelService)> hotelsBars = const <(
        Hotel,
        HotelService
      )>[],
      this.isLoading = false,
      this.errorMessageLocaleKey})
      : _newHotelsVenues = newHotelsVenues,
        _recommendedHotelsVenues = recommendedHotelsVenues,
        _hotelsGyms = hotelsGyms,
        _hotelsRestaurants = hotelsRestaurants,
        _hotelsSpas = hotelsSpas,
        _hotelsPools = hotelsPools,
        _hotelsBars = hotelsBars;

  final List<Hotel> _newHotelsVenues;
  @override
  @JsonKey()
  List<Hotel> get newHotelsVenues {
    if (_newHotelsVenues is EqualUnmodifiableListView) return _newHotelsVenues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newHotelsVenues);
  }

  final List<Hotel> _recommendedHotelsVenues;
  @override
  @JsonKey()
  List<Hotel> get recommendedHotelsVenues {
    if (_recommendedHotelsVenues is EqualUnmodifiableListView)
      return _recommendedHotelsVenues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedHotelsVenues);
  }

  final List<(Hotel, HotelService)> _hotelsGyms;
  @override
  @JsonKey()
  List<(Hotel, HotelService)> get hotelsGyms {
    if (_hotelsGyms is EqualUnmodifiableListView) return _hotelsGyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotelsGyms);
  }

  final List<(Hotel, HotelService)> _hotelsRestaurants;
  @override
  @JsonKey()
  List<(Hotel, HotelService)> get hotelsRestaurants {
    if (_hotelsRestaurants is EqualUnmodifiableListView)
      return _hotelsRestaurants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotelsRestaurants);
  }

  final List<(Hotel, HotelService)> _hotelsSpas;
  @override
  @JsonKey()
  List<(Hotel, HotelService)> get hotelsSpas {
    if (_hotelsSpas is EqualUnmodifiableListView) return _hotelsSpas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotelsSpas);
  }

  final List<(Hotel, HotelService)> _hotelsPools;
  @override
  @JsonKey()
  List<(Hotel, HotelService)> get hotelsPools {
    if (_hotelsPools is EqualUnmodifiableListView) return _hotelsPools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotelsPools);
  }

  final List<(Hotel, HotelService)> _hotelsBars;
  @override
  @JsonKey()
  List<(Hotel, HotelService)> get hotelsBars {
    if (_hotelsBars is EqualUnmodifiableListView) return _hotelsBars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotelsBars);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessageLocaleKey;

  @override
  String toString() {
    return 'HomeState(newHotelsVenues: $newHotelsVenues, recommendedHotelsVenues: $recommendedHotelsVenues, hotelsGyms: $hotelsGyms, hotelsRestaurants: $hotelsRestaurants, hotelsSpas: $hotelsSpas, hotelsPools: $hotelsPools, hotelsBars: $hotelsBars, isLoading: $isLoading, errorMessageLocaleKey: $errorMessageLocaleKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other._newHotelsVenues, _newHotelsVenues) &&
            const DeepCollectionEquality().equals(
                other._recommendedHotelsVenues, _recommendedHotelsVenues) &&
            const DeepCollectionEquality()
                .equals(other._hotelsGyms, _hotelsGyms) &&
            const DeepCollectionEquality()
                .equals(other._hotelsRestaurants, _hotelsRestaurants) &&
            const DeepCollectionEquality()
                .equals(other._hotelsSpas, _hotelsSpas) &&
            const DeepCollectionEquality()
                .equals(other._hotelsPools, _hotelsPools) &&
            const DeepCollectionEquality()
                .equals(other._hotelsBars, _hotelsBars) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessageLocaleKey, errorMessageLocaleKey) ||
                other.errorMessageLocaleKey == errorMessageLocaleKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newHotelsVenues),
      const DeepCollectionEquality().hash(_recommendedHotelsVenues),
      const DeepCollectionEquality().hash(_hotelsGyms),
      const DeepCollectionEquality().hash(_hotelsRestaurants),
      const DeepCollectionEquality().hash(_hotelsSpas),
      const DeepCollectionEquality().hash(_hotelsPools),
      const DeepCollectionEquality().hash(_hotelsBars),
      isLoading,
      errorMessageLocaleKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final List<Hotel> newHotelsVenues,
      final List<Hotel> recommendedHotelsVenues,
      final List<(Hotel, HotelService)> hotelsGyms,
      final List<(Hotel, HotelService)> hotelsRestaurants,
      final List<(Hotel, HotelService)> hotelsSpas,
      final List<(Hotel, HotelService)> hotelsPools,
      final List<(Hotel, HotelService)> hotelsBars,
      final bool isLoading,
      final String? errorMessageLocaleKey}) = _$_HomeState;

  @override
  List<Hotel> get newHotelsVenues;
  @override
  List<Hotel> get recommendedHotelsVenues;
  @override
  List<(Hotel, HotelService)> get hotelsGyms;
  @override
  List<(Hotel, HotelService)> get hotelsRestaurants;
  @override
  List<(Hotel, HotelService)> get hotelsSpas;
  @override
  List<(Hotel, HotelService)> get hotelsPools;
  @override
  List<(Hotel, HotelService)> get hotelsBars;
  @override
  bool get isLoading;
  @override
  String? get errorMessageLocaleKey;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
