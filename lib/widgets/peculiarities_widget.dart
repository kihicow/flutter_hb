import 'package:flutter/material.dart';

import '../app_style.dart';

class PeculiaritiesList extends StatelessWidget {
  const PeculiaritiesList(this.peculiarities, {super.key});

  final List<String> peculiarities;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: List.generate(
        peculiarities.length,
        (index) => _FeaturePane(peculiarities[index]),
      ),
    );
  }
}

class _FeaturePane extends StatelessWidget {
  const _FeaturePane(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: AppStyle.featurePaneColor,
      ),
      child: Text(
        title,
        style: AppStyle.subtitleTextStyle,
      ),
    );
  }
}
