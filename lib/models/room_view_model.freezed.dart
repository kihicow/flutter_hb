// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomViewModel _$RoomViewModelFromJson(Map<String, dynamic> json) {
  return _RoomViewModel.fromJson(json);
}

/// @nodoc
mixin _$RoomViewModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per')
  String get priceDescription => throw _privateConstructorUsedError;
  List<String> get peculiarities => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  int get imageIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomViewModelCopyWith<RoomViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomViewModelCopyWith<$Res> {
  factory $RoomViewModelCopyWith(
          RoomViewModel value, $Res Function(RoomViewModel) then) =
      _$RoomViewModelCopyWithImpl<$Res, RoomViewModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      @JsonKey(name: 'price_per') String priceDescription,
      List<String> peculiarities,
      List<String> imageUrls,
      int imageIndex});
}

/// @nodoc
class _$RoomViewModelCopyWithImpl<$Res, $Val extends RoomViewModel>
    implements $RoomViewModelCopyWith<$Res> {
  _$RoomViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? priceDescription = null,
    Object? peculiarities = null,
    Object? imageUrls = null,
    Object? imageIndex = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceDescription: null == priceDescription
          ? _value.priceDescription
          : priceDescription // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageIndex: null == imageIndex
          ? _value.imageIndex
          : imageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomViewModelCopyWith<$Res>
    implements $RoomViewModelCopyWith<$Res> {
  factory _$$_RoomViewModelCopyWith(
          _$_RoomViewModel value, $Res Function(_$_RoomViewModel) then) =
      __$$_RoomViewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      @JsonKey(name: 'price_per') String priceDescription,
      List<String> peculiarities,
      List<String> imageUrls,
      int imageIndex});
}

/// @nodoc
class __$$_RoomViewModelCopyWithImpl<$Res>
    extends _$RoomViewModelCopyWithImpl<$Res, _$_RoomViewModel>
    implements _$$_RoomViewModelCopyWith<$Res> {
  __$$_RoomViewModelCopyWithImpl(
      _$_RoomViewModel _value, $Res Function(_$_RoomViewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? priceDescription = null,
    Object? peculiarities = null,
    Object? imageUrls = null,
    Object? imageIndex = null,
  }) {
    return _then(_$_RoomViewModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceDescription: null == priceDescription
          ? _value.priceDescription
          : priceDescription // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageIndex: null == imageIndex
          ? _value.imageIndex
          : imageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomViewModel implements _RoomViewModel {
  const _$_RoomViewModel(
      {required this.id,
      required this.name,
      required this.price,
      @JsonKey(name: 'price_per') required this.priceDescription,
      required final List<String> peculiarities,
      required final List<String> imageUrls,
      this.imageIndex = 0})
      : _peculiarities = peculiarities,
        _imageUrls = imageUrls;

  factory _$_RoomViewModel.fromJson(Map<String, dynamic> json) =>
      _$$_RoomViewModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  @override
  @JsonKey(name: 'price_per')
  final String priceDescription;
  final List<String> _peculiarities;
  @override
  List<String> get peculiarities {
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peculiarities);
  }

  final List<String> _imageUrls;
  @override
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  @JsonKey()
  final int imageIndex;

  @override
  String toString() {
    return 'RoomViewModel(id: $id, name: $name, price: $price, priceDescription: $priceDescription, peculiarities: $peculiarities, imageUrls: $imageUrls, imageIndex: $imageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomViewModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceDescription, priceDescription) ||
                other.priceDescription == priceDescription) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.imageIndex, imageIndex) ||
                other.imageIndex == imageIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      priceDescription,
      const DeepCollectionEquality().hash(_peculiarities),
      const DeepCollectionEquality().hash(_imageUrls),
      imageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomViewModelCopyWith<_$_RoomViewModel> get copyWith =>
      __$$_RoomViewModelCopyWithImpl<_$_RoomViewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomViewModelToJson(
      this,
    );
  }
}

abstract class _RoomViewModel implements RoomViewModel {
  const factory _RoomViewModel(
      {required final int id,
      required final String name,
      required final int price,
      @JsonKey(name: 'price_per') required final String priceDescription,
      required final List<String> peculiarities,
      required final List<String> imageUrls,
      final int imageIndex}) = _$_RoomViewModel;

  factory _RoomViewModel.fromJson(Map<String, dynamic> json) =
      _$_RoomViewModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get price;
  @override
  @JsonKey(name: 'price_per')
  String get priceDescription;
  @override
  List<String> get peculiarities;
  @override
  List<String> get imageUrls;
  @override
  int get imageIndex;
  @override
  @JsonKey(ignore: true)
  _$$_RoomViewModelCopyWith<_$_RoomViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
