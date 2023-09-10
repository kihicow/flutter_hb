import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_paid_page_event.dart';
part 'order_paid_page_state.dart';
part 'order_paid_page_bloc.freezed.dart';

class OrderPaidPageBloc extends Bloc<OrderPaidPageEvent, OrderPaidPageState> {
  OrderPaidPageBloc() : super(const _Initial()) {
    on<_BackButtonPressed>(_backButtonPressed);
    on<_SuperButtonPressed>(_superButtonPressed);
  }

  FutureOr<void> _backButtonPressed(
    _BackButtonPressed event,
    Emitter<OrderPaidPageState> emit,
  ) {
    Modular.to.pop();
  }

  FutureOr<void> _superButtonPressed(
    _SuperButtonPressed event,
    Emitter<OrderPaidPageState> emit,
  ) {
    Modular.to.navigate(Modular.initialRoute);
  }
}
