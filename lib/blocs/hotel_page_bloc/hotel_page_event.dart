part of 'hotel_page_bloc.dart';

@freezed
class HotelPageEvent with _$HotelPageEvent {
  const factory HotelPageEvent.started() = _Started;

  const factory HotelPageEvent.imageScrolled(
    int imageIndex,
  ) = _ImageScrolled;

  const factory HotelPageEvent.toRoomButtonPressed() = _ToRoomButtonPressed;
}
