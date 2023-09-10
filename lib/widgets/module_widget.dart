import 'package:flutter/material.dart';

import '../app_style.dart';

class ModuleWidget extends StatelessWidget {
  const ModuleWidget({
    super.key,
    required this.children,
    this.padding = const EdgeInsets.all(16.0),
  });

  final List<Widget> children;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppStyle.moduleColor,
      ),
      child: Padding(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
