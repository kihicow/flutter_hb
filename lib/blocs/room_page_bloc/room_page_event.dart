part of 'room_page_bloc.dart';

@freezed
class RoomPageEvent with _$RoomPageEvent {
  const factory RoomPageEvent.started() = _Started;

  const factory RoomPageEvent.imageScrolled({
    required int roomId,
    required int imageIndex,
  }) = _ImageScrolled;

  const factory RoomPageEvent.chooseRoomButtonPressed() =
      _ChooseRoomButtonPressed;

  const factory RoomPageEvent.backButtonPressed() = _BackButtonPressed;
}
