// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomViewModel _$$_RoomViewModelFromJson(Map<String, dynamic> json) =>
    _$_RoomViewModel(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      priceDescription: json['price_per'] as String,
      peculiarities: (json['peculiarities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      imageIndex: json['image_index'] as int? ?? 0,
    );

Map<String, dynamic> _$$_RoomViewModelToJson(_$_RoomViewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'price_per': instance.priceDescription,
      'peculiarities': instance.peculiarities,
      'image_urls': instance.imageUrls,
      'image_index': instance.imageIndex,
    };
