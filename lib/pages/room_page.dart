import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

import '../app_style.dart';
import '../blocs/room_page_bloc/room_page_bloc.dart';
import '../models/room_view_model.dart';
import '../widgets/bottom_button.dart';
import '../widgets/image_carousel_widget.dart';
import '../widgets/module_widget.dart';
import '../widgets/peculiarities_widget.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({super.key});

  static const String path = '/room';

  static Widget route(BuildContext context) => const RoomPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<RoomPageBloc>(),
      child: const _View(),
    );
  }
}

RoomPageBloc _read(BuildContext context) =>
    ReadContext(context).read<RoomPageBloc>();

RoomPageBloc _watch(BuildContext context) =>
    WatchContext(context).watch<RoomPageBloc>();

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Номер'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            _read(context).add(const RoomPageEvent.backButtonPressed());
          },
        ),
      ),
      body: _watch(context).state.loading ? Container() : const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      itemCount: _read(context).state.roomPageList.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 8.0);
      },
      itemBuilder: (context, index) {
        final RoomViewModel room = _read(context).state.roomPageList[index];

        return ModuleWidget(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 16.0),
            ImageCarouselWidget(
              imageUrls: room.imageUrls,
              onPageChanged: (index) {
                _read(context).add(RoomPageEvent.imageScrolled(
                    imageIndex: index, roomId: room.id));
              },
              imageIndex: _watch(context).state.roomPageList[index].imageIndex,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    room.name,
                    style: AppStyle.titleTextStyle,
                  ),
                  PeculiaritiesList(room.peculiarities),
                  const SizedBox(height: 8.0),
                  const _ShowMorePane(),
                  const SizedBox(height: 16.0),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: '${toCurrencyString(
                        room.price.toString(),
                        mantissaLength: 0,
                        thousandSeparator: ThousandSeparator.Space,
                      )} ₽',
                      style: AppStyle.priceTitleTextStyle,
                    ),
                    const WidgetSpan(
                        child: SizedBox(
                      width: 8.0,
                    )),
                    TextSpan(
                      text: room.priceDescription,
                      style: AppStyle.subtitleTextStyle,
                    ),
                  ])),
                  const SizedBox(height: 16.0),
                  BottomButton(
                      onPressed: () {
                        _read(context)
                            .add(const RoomPageEvent.chooseRoomButtonPressed());
                      },
                      title: 'Выбрать номер'),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ShowMorePane extends StatelessWidget {
  const _ShowMorePane();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: AppStyle.showMorePaneColor,
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Подробнее о номере',
                style: AppStyle.showMoreTextStyle,
              ),
              Text(' '),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
                color: AppStyle.showMoreTextColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
