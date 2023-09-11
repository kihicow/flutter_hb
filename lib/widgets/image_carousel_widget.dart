import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../app_style.dart';

class ImageCarouselWidget extends StatelessWidget {
  const ImageCarouselWidget({
    super.key,
    required this.imageUrls,
    required this.onPageChanged,
    required this.imageIndex,
  });

  final List<String> imageUrls;
  final ValueChanged<int> onPageChanged;
  final int imageIndex;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        _CarouselSlider(
          imagesUrls: imageUrls,
          onPageChanged: (int value) {
            onPageChanged(value);
          },
        ),
        _IndexPane(
          imagesUrls: imageUrls,
          imageIndex: imageIndex,
        ),
      ],
    );
  }
}

class _CarouselSlider extends StatelessWidget {
  const _CarouselSlider({
    required this.imagesUrls,
    required this.onPageChanged,
  });

  final List<String> imagesUrls;
  final ValueChanged<int> onPageChanged;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imagesUrls.map((e) => _ImageContainer(e)).toList(),
      options: CarouselOptions(
        viewportFraction: 1,
        onPageChanged: (index, _) {
          onPageChanged(index);
        },
      ),
    );
  }
}

class _IndexPane extends StatelessWidget {
  const _IndexPane({required this.imagesUrls, required this.imageIndex});

  final List<String> imagesUrls;
  final int imageIndex;

  List<Widget> list(BuildContext context) {
    final int length = imagesUrls.length;
    final List<double> opacityList = List.generate(
      length,
      (index) => (length - index + 1) * 5 * 0.01,
    );

    return List.generate(
      length,
      (index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.5),
        child: ClipOval(
          child: Container(
            height: 7,
            width: 7,
            color: imageIndex == index
                ? AppStyle.pinColor
                : AppStyle.pinColor.withOpacity(opacityList[index]),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 17,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      margin: const EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: AppStyle.moduleColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: list(context),
      ),
    );
  }
}

class _ImageContainer extends StatelessWidget {
  const _ImageContainer(this.url);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image.network(
          url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
