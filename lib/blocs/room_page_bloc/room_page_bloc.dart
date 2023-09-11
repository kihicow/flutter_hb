import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/rest_client.dart';
import '../../models/room_view_model.dart';
import '../../pages/book_page.dart';

part 'room_page_bloc.freezed.dart';
part 'room_page_event.dart';
part 'room_page_state.dart';

class RoomPageBloc extends Bloc<RoomPageEvent, RoomPageState> {
  RoomPageBloc() : super(RoomPageState.initial()) {
    on<_Started>(_started);
    add(const _Started());

    on<_ImageScrolled>(_imageScrolled);
    on<_ChooseRoomButtonPressed>(_chooseRoomButtonPressed);
    on<_BackButtonPressed>(_backButtonPressed);
  }

  FutureOr<void> _started(
    _Started event,
    Emitter<RoomPageState> emit,
  ) async {
    final RestClient client = RestClient(Modular.get<Dio>());
    final Map<String, List<RoomViewModel>> rooms = await client.getRooms();

    emit(
      state.copyWith(
        roomPageList: rooms['rooms'] ?? [],
        loading: false,
      ),
    );
  }

  FutureOr<void> _imageScrolled(
    _ImageScrolled event,
    Emitter<RoomPageState> emit,
  ) {
    final List<RoomViewModel> list = List.from(state.roomPageList);

    final int index = list.indexWhere((element) => element.id == event.roomId);

    final RoomViewModel room =
        list.singleWhere((element) => element.id == event.roomId);

    list[index] = room.copyWith(imageIndex: event.imageIndex);

    emit(state.copyWith(roomPageList: list));
  }

  FutureOr<void> _chooseRoomButtonPressed(
    _ChooseRoomButtonPressed event,
    Emitter<RoomPageState> emit,
  ) {
    Modular.to.pushNamed(BookPage.path);
  }

  FutureOr<void> _backButtonPressed(
    _BackButtonPressed event,
    Emitter<RoomPageState> emit,
  ) {
    Modular.to.pop();
  }
}
