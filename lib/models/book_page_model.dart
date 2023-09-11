// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_page_model.freezed.dart';
part 'book_page_model.g.dart';

@freezed
class BookPageModel with _$BookPageModel {
  const factory BookPageModel({
    required int id,
    required String hotelName,
    @JsonKey(name: 'hotel_adress') required String hotelAddress,
    @JsonKey(name: 'horating') required int hotelRating,
    required String ratingName,
    required String departure,
    required String arrivalCountry,
    required String tourDateStart,
    required String tourDateStop,
    required int numberOfNights,
    required String room,
    required String nutrition,
    required int tourPrice,
    required int fuelCharge,
    required int serviceCharge,
  }) = _BookPageModel;

  const BookPageModel._();

  int get finalPrice => tourPrice + fuelCharge + serviceCharge;

  factory BookPageModel.fromJson(Map<String, dynamic> json) =>
      _$BookPageModelFromJson(json);

  factory BookPageModel.initial() => const BookPageModel(
        id: 0,
        hotelName: '',
        hotelAddress: '',
        hotelRating: 0,
        ratingName: '',
        departure: '',
        arrivalCountry: '',
        tourDateStart: '',
        tourDateStop: '',
        numberOfNights: 0,
        room: '',
        nutrition: '',
        tourPrice: 0,
        fuelCharge: 0,
        serviceCharge: 0,
      );

  factory BookPageModel.mock() => const BookPageModel(
        id: 1,
        hotelName: 'Лучший пятизвездочный отель в Хургаде, Египет',
        hotelAddress: 'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
        hotelRating: 5,
        ratingName: 'Превосходно',
        departure: 'Москва',
        arrivalCountry: 'Египет, Хургада',
        tourDateStart: '19.09.2023',
        tourDateStop: '27.09.2023',
        numberOfNights: 7,
        room: 'Люкс номер с видом на море',
        nutrition: 'Все включено',
        tourPrice: 289400,
        fuelCharge: 9300,
        serviceCharge: 2150,
      );
}
