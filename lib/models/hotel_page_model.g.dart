// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HotelPageModel _$$_HotelPageModelFromJson(Map<String, dynamic> json) =>
    _$_HotelPageModel(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['adress'] as String,
      minimalPrice: json['minimal_price'] as int,
      priceForIt: json['price_for_it'] as String,
      rating: json['rating'] as int,
      ratingName: json['rating_name'] as String,
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      aboutTheHotelDescription:
          _readHotelDescription(json, 'about_the_hotel_description') as String,
      aboutTheHotelPeculiarities:
          (_readHotelPeculiarities(json, 'about_the_hotel_peculiarities')
                  as List<dynamic>)
              .map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$_HotelPageModelToJson(_$_HotelPageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adress': instance.address,
      'minimal_price': instance.minimalPrice,
      'price_for_it': instance.priceForIt,
      'rating': instance.rating,
      'rating_name': instance.ratingName,
      'image_urls': instance.imageUrls,
      'about_the_hotel_description': instance.aboutTheHotelDescription,
      'about_the_hotel_peculiarities': instance.aboutTheHotelPeculiarities,
    };
