import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../app_style.dart';
import '../blocs/hotel_page_bloc/hotel_page_bloc.dart';
import '../widgets/bottom_button.dart';
import '../widgets/image_carousel_widget.dart';
import '../widgets/module_widget.dart';
import '../widgets/peculiarities_widget.dart';
import '../widgets/rating_pane.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({super.key});

  static const String path = '/hotel';

  static Widget route(BuildContext context) => const HotelPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<HotelPageBloc>(),
      child: const _View(),
    );
  }
}

HotelPageBloc _read(BuildContext context) =>
    ReadContext(context).read<HotelPageBloc>();

HotelPageBloc _watch(BuildContext context) =>
    WatchContext(context).watch<HotelPageBloc>();

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _Body(),
      bottomNavigationBar: _BottomNavigationBar(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return _watch(context).state.loading
        ? Container()
        : const CustomScrollView(
            slivers: [
              _AppBar(),
              _ListView(),
            ],
          );
  }
}

class _ListView extends StatelessWidget {
  const _ListView();

  @override
  Widget build(BuildContext context) {
    return SliverList.list(
      children: const [
        _HotelModule(),
        SizedBox(height: 8.0),
        _DescriptionModule(),
        SizedBox(height: 8.0),
      ],
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      stretch: true,
      pinned: true,
      title: Text(
        'Отель',
        style: AppStyle.appBarTextStyle,
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
          title: 'К выбору номера',
          onPressed: () {
            _read(context).add(const HotelPageEvent.toRoomButtonPressed());
          },
        ),
      ),
    );
  }
}

class _DescriptionModule extends StatelessWidget {
  const _DescriptionModule();

  @override
  Widget build(BuildContext context) {
    return ModuleWidget(
      children: [
        const Text(
          'Об отеле',
          style: AppStyle.titleTextStyle,
        ),
        const SizedBox(height: 8.0),
        PeculiaritiesList(
          _read(context).state.hotel.aboutTheHotelPeculiarities,
        ),
        const SizedBox(height: 8.0),
        Text(
          _read(context).state.hotel.aboutTheHotelDescription,
          style: AppStyle.bodyTextStyle,
        ),
        const SizedBox(height: 8.0),
        const _IncludeList(),
      ],
    );
  }
}

class _IncludeList extends StatelessWidget {
  const _IncludeList();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppStyle.featurePaneColor,
      ),
      child: const Column(
        children: [
          _IncludeTile(
            asset: 'assets/icons/emoji-happy.svg',
            title: 'Удобства',
            subtitle: 'Самое необходимое',
          ),
          Divider(
            height: 0,
            indent: 54,
            endIndent: 20,
          ),
          _IncludeTile(
            asset: 'assets/icons/tick-square.svg',
            title: 'Что включено',
            subtitle: 'Самое необходимое',
          ),
          Divider(
            height: 0,
            indent: 54,
            endIndent: 20,
          ),
          _IncludeTile(
            asset: 'assets/icons/close-square.svg',
            title: 'Что не включено',
            subtitle: 'Самое необходимое',
          ),
        ],
      ),
    );
  }
}

class _HotelModule extends StatelessWidget {
  const _HotelModule();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
        ),
        color: AppStyle.moduleColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageCarouselWidget(
            imageUrls: _read(context).state.hotel.imageUrls,
            onPageChanged: (int index) {
              _read(context).add(HotelPageEvent.imageScrolled(index));
            },
            imageIndex: _watch(context).state.imageIndex,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingPane(
                  rating: _read(context).state.hotel.rating,
                  ratingName: _read(context).state.hotel.ratingName,
                ),
                const SizedBox(height: 8.0),
                Text(
                  _read(context).state.hotel.name,
                  style: AppStyle.titleTextStyle,
                ),
                const SizedBox(height: 8.0),
                InkWell(
                  onTap: () {},
                  child: Text(
                    _read(context).state.hotel.address,
                    style: AppStyle.addressButtonTextStyle,
                  ),
                ),
                const SizedBox(height: 16.0),
                const _PriceView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PriceView extends StatelessWidget {
  const _PriceView();

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'от ${toCurrencyString(
              _read(context).state.hotel.minimalPrice.toString(),
              mantissaLength: 0,
              thousandSeparator: ThousandSeparator.Space,
            )} ₽',
            style: AppStyle.priceTitleTextStyle,
          ),
          const WidgetSpan(
            child: SizedBox(
              width: 8.0,
            ),
          ),
          TextSpan(
            text: _read(context).state.hotel.priceForIt,
            style: AppStyle.subtitleTextStyle,
          ),
        ],
      ),
    );
  }
}

class _IncludeTile extends StatelessWidget {
  const _IncludeTile({
    required this.asset,
    required this.title,
    required this.subtitle,
  });

  final String asset;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      minLeadingWidth: 24.0,
      leading: Center(
        widthFactor: 1.0,
        child: SvgPicture.asset(asset),
      ),
      title: Text(
        title,
        style: AppStyle.bodyTextStyle,
      ),
      subtitle: Text(
        subtitle,
        style: AppStyle.subtitleTextStyle,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: AppStyle.textColor,
      ),
    );
  }
}
