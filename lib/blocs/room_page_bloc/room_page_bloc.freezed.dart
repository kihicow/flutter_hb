// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int roomId, int imageIndex) imageScrolled,
    required TResult Function() chooseRoomButtonPressed,
    required TResult Function() backButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int roomId, int imageIndex)? imageScrolled,
    TResult? Function()? chooseRoomButtonPressed,
    TResult? Function()? backButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int roomId, int imageIndex)? imageScrolled,
    TResult Function()? chooseRoomButtonPressed,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ImageScrolled value) imageScrolled,
    required TResult Function(_ChooseRoomButtonPressed value)
        chooseRoomButtonPressed,
    required TResult Function(_BackButtonPressed value) backButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ImageScrolled value)? imageScrolled,
    TResult? Function(_ChooseRoomButtonPressed value)? chooseRoomButtonPressed,
    TResult? Function(_BackButtonPressed value)? backButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageScrolled value)? imageScrolled,
    TResult Function(_ChooseRoomButtonPressed value)? chooseRoomButtonPressed,
    TResult Function(_BackButtonPressed value)? backButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomPageEventCopyWith<$Res> {
  factory $RoomPageEventCopyWith(
          RoomPageEvent value, $Res Function(RoomPageEvent) then) =
      _$RoomPageEventCopyWithImpl<$Res, RoomPageEvent>;
}

/// @nodoc
class _$RoomPageEventCopyWithImpl<$Res, $Val extends RoomPageEvent>
    implements $RoomPageEventCopyWith<$Res> {
  _$RoomPageEventCopyWithImpl(this._value, this._then);

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
    extends _$RoomPageEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'RoomPageEvent.started()';
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
    required TResult Function(int roomId, int imageIndex) imageScrolled,
    required TResult Function() chooseRoomButtonPressed,
    required TResult Function() backButtonPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int roomId, int imageIndex)? imageScrolled,
    TResult? Function()? chooseRoomButtonPressed,
    TResult? Function()? backButtonPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int roomId, int imageIndex)? imageScrolled,
    TResult Function()? chooseRoomButtonPressed,
    TResult Function()? backButtonPressed,
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
    required TResult Function(_ChooseRoomButtonPressed value)
        chooseRoomButtonPressed,
    required TResult Function(_BackButtonPressed value) backButtonPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ImageScrolled value)? imageScrolled,
    TResult? Function(_ChooseRoomButtonPressed value)? chooseRoomButtonPressed,
    TResult? Function(_BackButtonPressed value)? backButtonPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageScrolled value)? imageScrolled,
    TResult Function(_ChooseRoomButtonPressed value)? chooseRoomButtonPressed,
    TResult Function(_BackButtonPressed value)? backButtonPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RoomPageEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ImageScrolledCopyWith<$Res> {
  factory _$$_ImageScrolledCopyWith(
          _$_ImageScrolled value, $Res Function(_$_ImageScrolled) then) =
      __$$_ImageScrolledCopyWithImpl<$Res>;
  @useResult
  $Res call({int roomId, int imageIndex});
}

/// @nodoc
class __$$_ImageScrolledCopyWithImpl<$Res>
    extends _$RoomPageEventCopyWithImpl<$Res, _$_ImageScrolled>
    implements _$$_ImageScrolledCopyWith<$Res> {
  __$$_ImageScrolledCopyWithImpl(
      _$_ImageScrolled _value, $Res Function(_$_ImageScrolled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? imageIndex = null,
  }) {
    return _then(_$_ImageScrolled(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      imageIndex: null == imageIndex
          ? _value.imageIndex
          : imageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ImageScrolled implements _ImageScrolled {
  const _$_ImageScrolled({required this.roomId, required this.imageIndex});

  @override
  final int roomId;
  @override
  final int imageIndex;

  @override
  String toString() {
    return 'RoomPageEvent.imageScrolled(roomId: $roomId, imageIndex: $imageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageScrolled &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.imageIndex, imageIndex) ||
                other.imageIndex == imageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId, imageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageScrolledCopyWith<_$_ImageScrolled> get copyWith =>
      __$$_ImageScrolledCopyWithImpl<_$_ImageScrolled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int roomId, int imageIndex) imageScrolled,
    required TResult Function() chooseRoomButtonPressed,
    required TResult Function() backButtonPressed,
  }) {
    return imageScrolled(roomId, imageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int roomId, int imageIndex)? imageScrolled,
    TResult? Function()? chooseRoomButtonPressed,
    TResult? Function()? backButtonPressed,
  }) {
    return imageScrolled?.call(roomId, imageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int roomId, int imageIndex)? imageScrolled,
    TResult Function()? chooseRoomButtonPressed,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) {
    if (imageScrolled != null) {
      return imageScrolled(roomId, imageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ImageScrolled value) imageScrolled,
    required TResult Function(_ChooseRoomButtonPressed value)
        chooseRoomButtonPressed,
    required TResult Function(_BackButtonPressed value) backButtonPressed,
  }) {
    return imageScrolled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ImageScrolled value)? imageScrolled,
    TResult? Function(_ChooseRoomButtonPressed value)? chooseRoomButtonPressed,
    TResult? Function(_BackButtonPressed value)? backButtonPressed,
  }) {
    return imageScrolled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageScrolled value)? imageScrolled,
    TResult Function(_ChooseRoomButtonPressed value)? chooseRoomButtonPressed,
    TResult Function(_BackButtonPressed value)? backButtonPressed,
    required TResult orElse(),
  }) {
    if (imageScrolled != null) {
      return imageScrolled(this);
    }
    return orElse();
  }
}

abstract class _ImageScrolled implements RoomPageEvent {
  const factory _ImageScrolled(
      {required final int roomId,
      required final int imageIndex}) = _$_ImageScrolled;

  int get roomId;
  int get imageIndex;
  @JsonKey(ignore: true)
  _$$_ImageScrolledCopyWith<_$_ImageScrolled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChooseRoomButtonPressedCopyWith<$Res> {
  factory _$$_ChooseRoomButtonPressedCopyWith(_$_ChooseRoomButtonPressed value,
          $Res Function(_$_ChooseRoomButtonPressed) then) =
      __$$_ChooseRoomButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChooseRoomButtonPressedCopyWithImpl<$Res>
    extends _$RoomPageEventCopyWithImpl<$Res, _$_ChooseRoomButtonPressed>
    implements _$$_ChooseRoomButtonPressedCopyWith<$Res> {
  __$$_ChooseRoomButtonPressedCopyWithImpl(_$_ChooseRoomButtonPressed _value,
      $Res Function(_$_ChooseRoomButtonPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChooseRoomButtonPressed implements _ChooseRoomButtonPressed {
  const _$_ChooseRoomButtonPressed();

  @override
  String toString() {
    return 'RoomPageEvent.chooseRoomButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChooseRoomButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int roomId, int imageIndex) imageScrolled,
    required TResult Function() chooseRoomButtonPressed,
    required TResult Function() backButtonPressed,
  }) {
    return chooseRoomButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int roomId, int imageIndex)? imageScrolled,
    TResult? Function()? chooseRoomButtonPressed,
    TResult? Function()? backButtonPressed,
  }) {
    return chooseRoomButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int roomId, int imageIndex)? imageScrolled,
    TResult Function()? chooseRoomButtonPressed,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) {
    if (chooseRoomButtonPressed != null) {
      return chooseRoomButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ImageScrolled value) imageScrolled,
    required TResult Function(_ChooseRoomButtonPressed value)
        chooseRoomButtonPressed,
    required TResult Function(_BackButtonPressed value) backButtonPressed,
  }) {
    return chooseRoomButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ImageScrolled value)? imageScrolled,
    TResult? Function(_ChooseRoomButtonPressed value)? chooseRoomButtonPressed,
    TResult? Function(_BackButtonPressed value)? backButtonPressed,
  }) {
    return chooseRoomButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageScrolled value)? imageScrolled,
    TResult Function(_ChooseRoomButtonPressed value)? chooseRoomButtonPressed,
    TResult Function(_BackButtonPressed value)? backButtonPressed,
    required TResult orElse(),
  }) {
    if (chooseRoomButtonPressed != null) {
      return chooseRoomButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _ChooseRoomButtonPressed implements RoomPageEvent {
  const factory _ChooseRoomButtonPressed() = _$_ChooseRoomButtonPressed;
}

/// @nodoc
abstract class _$$_BackButtonPressedCopyWith<$Res> {
  factory _$$_BackButtonPressedCopyWith(_$_BackButtonPressed value,
          $Res Function(_$_BackButtonPressed) then) =
      __$$_BackButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BackButtonPressedCopyWithImpl<$Res>
    extends _$RoomPageEventCopyWithImpl<$Res, _$_BackButtonPressed>
    implements _$$_BackButtonPressedCopyWith<$Res> {
  __$$_BackButtonPressedCopyWithImpl(
      _$_BackButtonPressed _value, $Res Function(_$_BackButtonPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BackButtonPressed implements _BackButtonPressed {
  const _$_BackButtonPressed();

  @override
  String toString() {
    return 'RoomPageEvent.backButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BackButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int roomId, int imageIndex) imageScrolled,
    required TResult Function() chooseRoomButtonPressed,
    required TResult Function() backButtonPressed,
  }) {
    return backButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int roomId, int imageIndex)? imageScrolled,
    TResult? Function()? chooseRoomButtonPressed,
    TResult? Function()? backButtonPressed,
  }) {
    return backButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int roomId, int imageIndex)? imageScrolled,
    TResult Function()? chooseRoomButtonPressed,
    TResult Function()? backButtonPressed,
    required TResult orElse(),
  }) {
    if (backButtonPressed != null) {
      return backButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ImageScrolled value) imageScrolled,
    required TResult Function(_ChooseRoomButtonPressed value)
        chooseRoomButtonPressed,
    required TResult Function(_BackButtonPressed value) backButtonPressed,
  }) {
    return backButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ImageScrolled value)? imageScrolled,
    TResult? Function(_ChooseRoomButtonPressed value)? chooseRoomButtonPressed,
    TResult? Function(_BackButtonPressed value)? backButtonPressed,
  }) {
    return backButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ImageScrolled value)? imageScrolled,
    TResult Function(_ChooseRoomButtonPressed value)? chooseRoomButtonPressed,
    TResult Function(_BackButtonPressed value)? backButtonPressed,
    required TResult orElse(),
  }) {
    if (backButtonPressed != null) {
      return backButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _BackButtonPressed implements RoomPageEvent {
  const factory _BackButtonPressed() = _$_BackButtonPressed;
}

/// @nodoc
mixin _$RoomPageState {
  bool get loading => throw _privateConstructorUsedError;
  List<RoomViewModel> get roomPageList => throw _privateConstructorUsedError;
  List<int> get imageIndexes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomPageStateCopyWith<RoomPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomPageStateCopyWith<$Res> {
  factory $RoomPageStateCopyWith(
          RoomPageState value, $Res Function(RoomPageState) then) =
      _$RoomPageStateCopyWithImpl<$Res, RoomPageState>;
  @useResult
  $Res call(
      {bool loading, List<RoomViewModel> roomPageList, List<int> imageIndexes});
}

/// @nodoc
class _$RoomPageStateCopyWithImpl<$Res, $Val extends RoomPageState>
    implements $RoomPageStateCopyWith<$Res> {
  _$RoomPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? roomPageList = null,
    Object? imageIndexes = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      roomPageList: null == roomPageList
          ? _value.roomPageList
          : roomPageList // ignore: cast_nullable_to_non_nullable
              as List<RoomViewModel>,
      imageIndexes: null == imageIndexes
          ? _value.imageIndexes
          : imageIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomPageStateCopyWith<$Res>
    implements $RoomPageStateCopyWith<$Res> {
  factory _$$_RoomPageStateCopyWith(
          _$_RoomPageState value, $Res Function(_$_RoomPageState) then) =
      __$$_RoomPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading, List<RoomViewModel> roomPageList, List<int> imageIndexes});
}

/// @nodoc
class __$$_RoomPageStateCopyWithImpl<$Res>
    extends _$RoomPageStateCopyWithImpl<$Res, _$_RoomPageState>
    implements _$$_RoomPageStateCopyWith<$Res> {
  __$$_RoomPageStateCopyWithImpl(
      _$_RoomPageState _value, $Res Function(_$_RoomPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? roomPageList = null,
    Object? imageIndexes = null,
  }) {
    return _then(_$_RoomPageState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      roomPageList: null == roomPageList
          ? _value._roomPageList
          : roomPageList // ignore: cast_nullable_to_non_nullable
              as List<RoomViewModel>,
      imageIndexes: null == imageIndexes
          ? _value._imageIndexes
          : imageIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_RoomPageState implements _RoomPageState {
  const _$_RoomPageState(
      {required this.loading,
      required final List<RoomViewModel> roomPageList,
      required final List<int> imageIndexes})
      : _roomPageList = roomPageList,
        _imageIndexes = imageIndexes;

  @override
  final bool loading;
  final List<RoomViewModel> _roomPageList;
  @override
  List<RoomViewModel> get roomPageList {
    if (_roomPageList is EqualUnmodifiableListView) return _roomPageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roomPageList);
  }

  final List<int> _imageIndexes;
  @override
  List<int> get imageIndexes {
    if (_imageIndexes is EqualUnmodifiableListView) return _imageIndexes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageIndexes);
  }

  @override
  String toString() {
    return 'RoomPageState(loading: $loading, roomPageList: $roomPageList, imageIndexes: $imageIndexes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomPageState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality()
                .equals(other._roomPageList, _roomPageList) &&
            const DeepCollectionEquality()
                .equals(other._imageIndexes, _imageIndexes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      const DeepCollectionEquality().hash(_roomPageList),
      const DeepCollectionEquality().hash(_imageIndexes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomPageStateCopyWith<_$_RoomPageState> get copyWith =>
      __$$_RoomPageStateCopyWithImpl<_$_RoomPageState>(this, _$identity);
}

abstract class _RoomPageState implements RoomPageState {
  const factory _RoomPageState(
      {required final bool loading,
      required final List<RoomViewModel> roomPageList,
      required final List<int> imageIndexes}) = _$_RoomPageState;

  @override
  bool get loading;
  @override
  List<RoomViewModel> get roomPageList;
  @override
  List<int> get imageIndexes;
  @override
  @JsonKey(ignore: true)
  _$$_RoomPageStateCopyWith<_$_RoomPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
