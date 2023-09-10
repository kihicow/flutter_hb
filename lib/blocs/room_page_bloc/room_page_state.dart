part of 'room_page_bloc.dart';

@freezed
class RoomPageState with _$RoomPageState {
  const factory RoomPageState({
    required bool loading,
    required List<RoomViewModel> roomPageList,
    required List<int> imageIndexes,
  }) = _RoomPageState;

  factory RoomPageState.initial() => const RoomPageState(
        loading: true,
        roomPageList: [
          // RoomViewModel.mock1(),
          // RoomViewModel.mock2(),
        ],
        imageIndexes: [0, 0],
      );
}
