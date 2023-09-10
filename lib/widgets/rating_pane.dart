import 'package:flutter/material.dart';

import '../app_style.dart';

class RatingPane extends StatelessWidget {
  const RatingPane({super.key, required this.rating, required this.ratingName});

  final int rating;
  final String ratingName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: AppStyle.ratingPaneColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              size: 15,
              color: AppStyle.ratingTextColor,
            ),
            const Text(' '),
            Text(
              rating.toString(),
              style: AppStyle.ratingTextStyle,
            ),
            const Text(' '),
            Text(ratingName, style: AppStyle.ratingTextStyle),
          ],
        ),
      ),
    );
  }
}
