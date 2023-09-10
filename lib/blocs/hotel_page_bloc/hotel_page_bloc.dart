import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_hb/models/hotel_page_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/rest_client.dart';
import '../../pages/room_page.dart';

part 'hotel_page_bloc.freezed.dart';
part 'hotel_page_event.dart';
part 'hotel_page_state.dart';

class HotelPageBloc extends Bloc<HotelPageEvent, HotelPageState> {
  HotelPageBloc() : super(HotelPageState.initial()) {
    on<_Started>(_started);
    add(const _Started());

    on<_ImageScrolled>(_imageScrolled);
    on<_ToRoomButtonPressed>(_toRoomButtonPressed);
  }

  final CarouselController carouselController = CarouselController();

  FutureOr<void> _started(
    _Started event,
    Emitter<HotelPageState> emit,
  ) async {
    final client = RestClient(Modular.get<Dio>());
    final HotelPageModel hotel = await client.getHotel();

    emit(state.copyWith(
      hotel: hotel,
      loading: false,
    ));
  }

  FutureOr<void> _imageScrolled(
    _ImageScrolled event,
    Emitter<HotelPageState> emit,
  ) {
    emit(state.copyWith(imageIndex: event.imageIndex));
  }

  FutureOr<void> _toRoomButtonPressed(
    _ToRoomButtonPressed event,
    Emitter<HotelPageState> emit,
  ) {
    Modular.to.pushNamed(RoomPage.path);
  }
}
