import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../app_style.dart';
import '../blocs/order_paid_page_bloc/order_paid_page_bloc.dart';
import '../widgets/bottom_button.dart';

class OrderPaidPage extends StatelessWidget {
  const OrderPaidPage({super.key});

  static const String path = '/paid';

  static Widget route(BuildContext context) => const OrderPaidPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<OrderPaidPageBloc>(),
      child: const _View(),
    );
  }
}

OrderPaidPageBloc _read(BuildContext context) =>
    ReadContext(context).read<OrderPaidPageBloc>();

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.paidPageBackgroundColor,
      appBar: AppBar(
        title: const Text('Заказ оплачен'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            _read(context).add(const OrderPaidPageEvent.backButtonPressed());
          },
        ),
      ),
      body: const _Body(),
      bottomNavigationBar: const _BottomNavigationBar(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 94,
            width: 94,
            decoration: const BoxDecoration(
              color: AppStyle.backgroundColor,
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '🎉',
                style: TextStyle(fontSize: 44),
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Text(
            'Ваш заказ принят в работу',
            style: AppStyle.titleTextStyle,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Подтверждение заказа № 104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
            style: AppStyle.subtitleTextStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppStyle.dividerColor,
          ),
        ),
      ),
      color: AppStyle.moduleColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BottomButton(
          title: 'Супер!',
          onPressed: () {
            _read(context).add(const OrderPaidPageEvent.superButtonPressed());
          },
        ),
      ),
    );
  }
}
