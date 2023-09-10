import 'package:flutter/material.dart';

import '../app_style.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.onPressed, required this.title});

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(double.maxFinite, 48),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        ).copyWith(
          backgroundColor: MaterialStateColor.resolveWith(
            (_) => AppStyle.bottomButtonColor,
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: Text(
          title,
          style: AppStyle.bottomButtonTextStyle,
        ),
      ),
    );
  }
}
