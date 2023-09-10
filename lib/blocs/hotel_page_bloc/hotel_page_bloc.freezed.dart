// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int imageIndex) imageScrolled,
    required TResult Function() toRoomButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int imageIndex)? imageScrolled,
    TResult? Function()? toRoomButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int imageIndex)? imageScrolled,
    TResult Function()? toRoomButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ImageScrolled value) imageScrolled,
    required TResult Function(_ToRoomButtonPressed value) toRoomButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ImageScrolled value)? imageScrolled,
    TResult? Function(_ToRoomButtonPressed value)? toRoomButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageScrolled value)? imageScrolled,
    TResult Function(_ToRoomButtonPressed value)? toRoomButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelPageEventCopyWith<$Res> {
  factory $HotelPageEventCopyWith(
          HotelPageEvent value, $Res Function(HotelPageEvent) then) =
      _$HotelPageEventCopyWithImpl<$Res, HotelPageEvent>;
}

/// @nodoc
class _$HotelPageEventCopyWithImpl<$Res, $Val extends HotelPageEvent>
    implements $HotelPageEventCopyWith<$Res> {
  _$HotelPageEventCopyWithImpl(this._value, this._then);

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
    extends _$HotelPageEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'HotelPageEvent.started()';
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
    required TResult Function(int imageIndex) imageScrolled,
    required TResult Function() toRoomButtonPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int imageIndex)? imageScrolled,
    TResult? Function()? toRoomButtonPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int imageIndex)? imageScrolled,
    TResult Function()? toRoomButtonPressed,
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
    required TResult Function(_ImageScrolled value) imageScrolled,
    required TResult Function(_ToRoomButtonPressed value) toRoomButtonPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ImageScrolled value)? imageScrolled,
    TResult? Function(_ToRoomButtonPressed value)? toRoomButtonPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageScrolled value)? imageScrolled,
    TResult Function(_ToRoomButtonPressed value)? toRoomButtonPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HotelPageEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ImageScrolledCopyWith<$Res> {
  factory _$$_ImageScrolledCopyWith(
          _$_ImageScrolled value, $Res Function(_$_ImageScrolled) then) =
      __$$_ImageScrolledCopyWithImpl<$Res>;
  @useResult
  $Res call({int imageIndex});
}

/// @nodoc
class __$$_ImageScrolledCopyWithImpl<$Res>
    extends _$HotelPageEventCopyWithImpl<$Res, _$_ImageScrolled>
    implements _$$_ImageScrolledCopyWith<$Res> {
  __$$_ImageScrolledCopyWithImpl(
      _$_ImageScrolled _value, $Res Function(_$_ImageScrolled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageIndex = null,
  }) {
    return _then(_$_ImageScrolled(
      null == imageIndex
          ? _value.imageIndex
          : imageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ImageScrolled implements _ImageScrolled {
  const _$_ImageScrolled(this.imageIndex);

  @override
  final int imageIndex;

  @override
  String toString() {
    return 'HotelPageEvent.imageScrolled(imageIndex: $imageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageScrolled &&
            (identical(other.imageIndex, imageIndex) ||
                other.imageIndex == imageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageScrolledCopyWith<_$_ImageScrolled> get copyWith =>
      __$$_ImageScrolledCopyWithImpl<_$_ImageScrolled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int imageIndex) imageScrolled,
    required TResult Function() toRoomButtonPressed,
  }) {
    return imageScrolled(imageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int imageIndex)? imageScrolled,
    TResult? Function()? toRoomButtonPressed,
  }) {
    return imageScrolled?.call(imageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int imageIndex)? imageScrolled,
    TResult Function()? toRoomButtonPressed,
    required TResult orElse(),
  }) {
    if (imageScrolled != null) {
      return imageScrolled(imageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ImageScrolled value) imageScrolled,
    required TResult Function(_ToRoomButtonPressed value) toRoomButtonPressed,
  }) {
    return imageScrolled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ImageScrolled value)? imageScrolled,
    TResult? Function(_ToRoomButtonPressed value)? toRoomButtonPressed,
  }) {
    return imageScrolled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageScrolled value)? imageScrolled,
    TResult Function(_ToRoomButtonPressed value)? toRoomButtonPressed,
    required TResult orElse(),
  }) {
    if (imageScrolled != null) {
      return imageScrolled(this);
    }
    return orElse();
  }
}

abstract class _ImageScrolled implements HotelPageEvent {
  const factory _ImageScrolled(final int imageIndex) = _$_ImageScrolled;

  int get imageIndex;
  @JsonKey(ignore: true)
  _$$_ImageScrolledCopyWith<_$_ImageScrolled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToRoomButtonPressedCopyWith<$Res> {
  factory _$$_ToRoomButtonPressedCopyWith(_$_ToRoomButtonPressed value,
          $Res Function(_$_ToRoomButtonPressed) then) =
      __$$_ToRoomButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToRoomButtonPressedCopyWithImpl<$Res>
    extends _$HotelPageEventCopyWithImpl<$Res, _$_ToRoomButtonPressed>
    implements _$$_ToRoomButtonPressedCopyWith<$Res> {
  __$$_ToRoomButtonPressedCopyWithImpl(_$_ToRoomButtonPressed _value,
      $Res Function(_$_ToRoomButtonPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ToRoomButtonPressed implements _ToRoomButtonPressed {
  const _$_ToRoomButtonPressed();

  @override
  String toString() {
    return 'HotelPageEvent.toRoomButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ToRoomButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int imageIndex) imageScrolled,
    required TResult Function() toRoomButtonPressed,
  }) {
    return toRoomButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int imageIndex)? imageScrolled,
    TResult? Function()? toRoomButtonPressed,
  }) {
    return toRoomButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int imageIndex)? imageScrolled,
    TResult Function()? toRoomButtonPressed,
    required TResult orElse(),
  }) {
    if (toRoomButtonPressed != null) {
      return toRoomButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ImageScrolled value) imageScrolled,
    required TResult Function(_ToRoomButtonPressed value) toRoomButtonPressed,
  }) {
    return toRoomButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ImageScrolled value)? imageScrolled,
    TResult? Function(_ToRoomButtonPressed value)? toRoomButtonPressed,
  }) {
    return toRoomButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageScrolled value)? imageScrolled,
    TResult Function(_ToRoomButtonPressed value)? toRoomButtonPressed,
    required TResult orElse(),
  }) {
    if (toRoomButtonPressed != null) {
      return toRoomButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _ToRoomButtonPressed implements HotelPageEvent {
  const factory _ToRoomButtonPressed() = _$_ToRoomButtonPressed;
}

/// @nodoc
mixin _$HotelPageState {
  bool get loading => throw _privateConstructorUsedError;
  int get imageIndex => throw _privateConstructorUsedError;
  HotelPageModel get hotel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelPageStateCopyWith<HotelPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelPageStateCopyWith<$Res> {
  factory $HotelPageStateCopyWith(
          HotelPageState value, $Res Function(HotelPageState) then) =
      _$HotelPageStateCopyWithImpl<$Res, HotelPageState>;
  @useResult
  $Res call({bool loading, int imageIndex, HotelPageModel hotel});

  $HotelPageModelCopyWith<$Res> get hotel;
}

/// @nodoc
class _$HotelPageStateCopyWithImpl<$Res, $Val extends HotelPageState>
    implements $HotelPageStateCopyWith<$Res> {
  _$HotelPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? imageIndex = null,
    Object? hotel = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      imageIndex: null == imageIndex
          ? _value.imageIndex
          : imageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      hotel: null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as HotelPageModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelPageModelCopyWith<$Res> get hotel {
    return $HotelPageModelCopyWith<$Res>(_value.hotel, (value) {
      return _then(_value.copyWith(hotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HotelPageStateCopyWith<$Res>
    implements $HotelPageStateCopyWith<$Res> {
  factory _$$_HotelPageStateCopyWith(
          _$_HotelPageState value, $Res Function(_$_HotelPageState) then) =
      __$$_HotelPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, int imageIndex, HotelPageModel hotel});

  @override
  $HotelPageModelCopyWith<$Res> get hotel;
}

/// @nodoc
class __$$_HotelPageStateCopyWithImpl<$Res>
    extends _$HotelPageStateCopyWithImpl<$Res, _$_HotelPageState>
    implements _$$_HotelPageStateCopyWith<$Res> {
  __$$_HotelPageStateCopyWithImpl(
      _$_HotelPageState _value, $Res Function(_$_HotelPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? imageIndex = null,
    Object? hotel = null,
  }) {
    return _then(_$_HotelPageState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      imageIndex: null == imageIndex
          ? _value.imageIndex
          : imageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      hotel: null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as HotelPageModel,
    ));
  }
}

/// @nodoc

class _$_HotelPageState implements _HotelPageState {
  const _$_HotelPageState(
      {required this.loading, required this.imageIndex, required this.hotel});

  @override
  final bool loading;
  @override
  final int imageIndex;
  @override
  final HotelPageModel hotel;

  @override
  String toString() {
    return 'HotelPageState(loading: $loading, imageIndex: $imageIndex, hotel: $hotel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelPageState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.imageIndex, imageIndex) ||
                other.imageIndex == imageIndex) &&
            (identical(other.hotel, hotel) || other.hotel == hotel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, imageIndex, hotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelPageStateCopyWith<_$_HotelPageState> get copyWith =>
      __$$_HotelPageStateCopyWithImpl<_$_HotelPageState>(this, _$identity);
}

abstract class _HotelPageState implements HotelPageState {
  const factory _HotelPageState(
      {required final bool loading,
      required final int imageIndex,
      required final HotelPageModel hotel}) = _$_HotelPageState;

  @override
  bool get loading;
  @override
  int get imageIndex;
  @override
  HotelPageModel get hotel;
  @override
  @JsonKey(ignore: true)
  _$$_HotelPageStateCopyWith<_$_HotelPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
