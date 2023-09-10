import 'package:dio/dio.dart';
import 'package:flutter_hb/blocs/book_page_bloc/book_page_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'blocs/hotel_page_bloc/hotel_page_bloc.dart';
import 'blocs/order_paid_page_bloc/order_paid_page_bloc.dart';
import 'blocs/room_page_bloc/room_page_bloc.dart';
import 'pages/book_page.dart';
import 'pages/hotel_page.dart';
import 'pages/order_paid_page.dart';
import 'pages/room_page.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    final Dio dio = Dio();
    dio.options.headers["Demo-Header"] = "demo header";
    i.addInstance(dio);

    i.add(HotelPageBloc.new);
    i.add(RoomPageBloc.new);
    i.add(BookPageBloc.new);
    i.add(OrderPaidPageBloc.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: HotelPage.route);
    r.child(RoomPage.path, child: RoomPage.route);
    r.child(BookPage.path, child: BookPage.route);
    r.child(OrderPaidPage.path, child: OrderPaidPage.route);
  }
}
