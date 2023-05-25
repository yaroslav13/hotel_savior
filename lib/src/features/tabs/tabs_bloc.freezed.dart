// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tabs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabsEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) onTabSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? onTabSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? onTabSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabSelected value) onTabSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabSelected value)? onTabSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabSelected value)? onTabSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabsEventCopyWith<TabsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabsEventCopyWith<$Res> {
  factory $TabsEventCopyWith(TabsEvent value, $Res Function(TabsEvent) then) =
      _$TabsEventCopyWithImpl<$Res, TabsEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$TabsEventCopyWithImpl<$Res, $Val extends TabsEvent>
    implements $TabsEventCopyWith<$Res> {
  _$TabsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TabSelectedCopyWith<$Res>
    implements $TabsEventCopyWith<$Res> {
  factory _$$_TabSelectedCopyWith(
          _$_TabSelected value, $Res Function(_$_TabSelected) then) =
      __$$_TabSelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_TabSelectedCopyWithImpl<$Res>
    extends _$TabsEventCopyWithImpl<$Res, _$_TabSelected>
    implements _$$_TabSelectedCopyWith<$Res> {
  __$$_TabSelectedCopyWithImpl(
      _$_TabSelected _value, $Res Function(_$_TabSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_TabSelected(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TabSelected implements _TabSelected {
  const _$_TabSelected({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'TabsEvent.onTabSelected(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabSelected &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabSelectedCopyWith<_$_TabSelected> get copyWith =>
      __$$_TabSelectedCopyWithImpl<_$_TabSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) onTabSelected,
  }) {
    return onTabSelected(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? onTabSelected,
  }) {
    return onTabSelected?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? onTabSelected,
    required TResult orElse(),
  }) {
    if (onTabSelected != null) {
      return onTabSelected(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabSelected value) onTabSelected,
  }) {
    return onTabSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabSelected value)? onTabSelected,
  }) {
    return onTabSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabSelected value)? onTabSelected,
    required TResult orElse(),
  }) {
    if (onTabSelected != null) {
      return onTabSelected(this);
    }
    return orElse();
  }
}

abstract class _TabSelected implements TabsEvent {
  const factory _TabSelected({required final int index}) = _$_TabSelected;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_TabSelectedCopyWith<_$_TabSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TabsState {
  int get currentSelectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabsStateCopyWith<TabsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabsStateCopyWith<$Res> {
  factory $TabsStateCopyWith(TabsState value, $Res Function(TabsState) then) =
      _$TabsStateCopyWithImpl<$Res, TabsState>;
  @useResult
  $Res call({int currentSelectedIndex});
}

/// @nodoc
class _$TabsStateCopyWithImpl<$Res, $Val extends TabsState>
    implements $TabsStateCopyWith<$Res> {
  _$TabsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSelectedIndex = null,
  }) {
    return _then(_value.copyWith(
      currentSelectedIndex: null == currentSelectedIndex
          ? _value.currentSelectedIndex
          : currentSelectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TabsStateCopyWith<$Res> implements $TabsStateCopyWith<$Res> {
  factory _$$_TabsStateCopyWith(
          _$_TabsState value, $Res Function(_$_TabsState) then) =
      __$$_TabsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentSelectedIndex});
}

/// @nodoc
class __$$_TabsStateCopyWithImpl<$Res>
    extends _$TabsStateCopyWithImpl<$Res, _$_TabsState>
    implements _$$_TabsStateCopyWith<$Res> {
  __$$_TabsStateCopyWithImpl(
      _$_TabsState _value, $Res Function(_$_TabsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSelectedIndex = null,
  }) {
    return _then(_$_TabsState(
      currentSelectedIndex: null == currentSelectedIndex
          ? _value.currentSelectedIndex
          : currentSelectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TabsState implements _TabsState {
  const _$_TabsState({this.currentSelectedIndex = 0});

  @override
  @JsonKey()
  final int currentSelectedIndex;

  @override
  String toString() {
    return 'TabsState(currentSelectedIndex: $currentSelectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabsState &&
            (identical(other.currentSelectedIndex, currentSelectedIndex) ||
                other.currentSelectedIndex == currentSelectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentSelectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabsStateCopyWith<_$_TabsState> get copyWith =>
      __$$_TabsStateCopyWithImpl<_$_TabsState>(this, _$identity);
}

abstract class _TabsState implements TabsState {
  const factory _TabsState({final int currentSelectedIndex}) = _$_TabsState;

  @override
  int get currentSelectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$_TabsStateCopyWith<_$_TabsState> get copyWith =>
      throw _privateConstructorUsedError;
}
