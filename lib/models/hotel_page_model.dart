import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_page_model.freezed.dart';
part 'hotel_page_model.g.dart';

String _readHotelDescription(Map json, String key) =>
    (json['about_the_hotel'] as Map<String, dynamic>)['description'] as String;

List<dynamic> _readHotelPeculiarities(Map json, String key) =>
    (json['about_the_hotel'] as Map<String, dynamic>)['peculiarities']
        as List<dynamic>;

@freezed
class HotelPageModel with _$HotelPageModel {
  const factory HotelPageModel({
    required int id,
    required String name,
    @JsonKey(name: 'adress') required String address,
    required int minimalPrice,
    required String priceForIt,
    required int rating,
    required String ratingName,
    required List<String> imageUrls,
    @JsonKey(readValue: _readHotelDescription)
    required String aboutTheHotelDescription,
    @JsonKey(readValue: _readHotelPeculiarities)
    required List<String> aboutTheHotelPeculiarities,
  }) = _HotelPageModel;

  factory HotelPageModel.fromJson(Map<String, dynamic> json) =>
      _$HotelPageModelFromJson(json);

  factory HotelPageModel.initial() => const HotelPageModel(
        id: 0,
        name: '',
        address: '',
        minimalPrice: 0,
        priceForIt: '',
        rating: 0,
        ratingName: '',
        imageUrls: [],
        aboutTheHotelDescription: '',
        aboutTheHotelPeculiarities: [],
      );

  factory HotelPageModel.mock() => const HotelPageModel(
        id: 1,
        name: 'Лучший пятизвездочный отель в Хургаде, Египет',
        address: 'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
        minimalPrice: 134268,
        priceForIt: 'За тур с перелётом',
        rating: 5,
        ratingName: 'Превосходно',
        imageUrls: [
          'https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg',
          'https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg',
          'https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg',
        ],
        aboutTheHotelDescription:
            'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
        aboutTheHotelPeculiarities: [
          'Бесплатный Wifi на всей территории отеля',
          '1 км до пляжа',
          'Бесплатный фитнес-клуб',
          '20 км до аэропорта',
        ],
      );
}
