// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookPageModel _$$_BookPageModelFromJson(Map<String, dynamic> json) =>
    _$_BookPageModel(
      id: json['id'] as int,
      hotelName: json['hotel_name'] as String,
      hotelAddress: json['hotel_adress'] as String,
      hotelRating: json['horating'] as int,
      ratingName: json['rating_name'] as String,
      departure: json['departure'] as String,
      arrivalCountry: json['arrival_country'] as String,
      tourDateStart: json['tour_date_start'] as String,
      tourDateStop: json['tour_date_stop'] as String,
      numberOfNights: json['number_of_nights'] as int,
      room: json['room'] as String,
      nutrition: json['nutrition'] as String,
      tourPrice: json['tour_price'] as int,
      fuelCharge: json['fuel_charge'] as int,
      serviceCharge: json['service_charge'] as int,
    );

Map<String, dynamic> _$$_BookPageModelToJson(_$_BookPageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotel_name': instance.hotelName,
      'hotel_adress': instance.hotelAddress,
      'horating': instance.hotelRating,
      'rating_name': instance.ratingName,
      'departure': instance.departure,
      'arrival_country': instance.arrivalCountry,
      'tour_date_start': instance.tourDateStart,
      'tour_date_stop': instance.tourDateStop,
      'number_of_nights': instance.numberOfNights,
      'room': instance.room,
      'nutrition': instance.nutrition,
      'tour_price': instance.tourPrice,
      'fuel_charge': instance.fuelCharge,
      'service_charge': instance.serviceCharge,
    };
