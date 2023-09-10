part of 'hotel_page_bloc.dart';

@freezed
class HotelPageState with _$HotelPageState {
  const factory HotelPageState({
    required bool loading,
    required int imageIndex,
    required HotelPageModel hotel,
  }) = _HotelPageState;

  factory HotelPageState.initial() => HotelPageState(
        loading: true,
        imageIndex: 0,
        hotel: HotelPageModel.initial(),
      );
}
