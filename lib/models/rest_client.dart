import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'book_page_model.dart';
import 'hotel_page_model.dart';
import 'room_view_model.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://run.mocky.io/v3')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/35e0d18e-2521-4f1b-a575-f0fe366f66e3')
  Future<HotelPageModel> getHotel();

  @GET('/f9a38183-6f95-43aa-853a-9c83cbb05ecd')
  Future<Map<String, List<RoomViewModel>>> getRooms();

  @GET('/e8868481-743f-4eb2-a0d7-2bc4012275c8')
  Future<BookPageModel> getBook();
}
