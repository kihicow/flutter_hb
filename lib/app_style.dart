import 'package:flutter/material.dart';

class AppStyle {
  static const Color backgroundColor = Color(0xFFF6F6F9);
  static const Color textColor = Colors.black;
  static const Color moduleColor = Colors.white;
  static const Color pinColor = Colors.black;
  static const Color addressButtonColor = Color(0xFF0D72FF);
  static const Color subtitleColor = Color(0xFF828796);
  static const Color bottomButtonTitleColor = Colors.white;
  static const Color bottomButtonColor = Color(0xFF0D72FF);
  static const Color ratingPaneColor = Color.fromARGB(51, 255, 200, 0);
  static const Color ratingTextColor = Color(0xFFFFA800);
  static const Color featurePaneColor = Color(0xFFFBFBFC);
  static const Color dividerColor = Color.fromARGB(38, 130, 135, 150);
  static const Color iconColor = Colors.black;
  static const Color showMorePaneColor = Color.fromARGB(25, 13, 114, 255);
  static const Color showMoreTextColor = Color(0xFF0D72FF);
  static const Color textFieldColor = Color(0xFFF6F6F9);
  static const Color textFieldLabelColor = Color(0xFFA9ABB7);
  static const Color textFieldTextColor = Color(0xFF14142B);
  static const Color errorColor = Color.fromARGB(38, 235, 87, 87);
  static const Color showHideArrowColor = Color(0xFF0D72FF);
  static const Color showHidePaneColor = Color.fromARGB(25, 13, 114, 255);
  static const Color addTouristPaneColor = Color(0xFF0D72FF);
  static const Color addTouristIconColor = Colors.white;
  static const Color paidPageBackgroundColor = Colors.white;

  static const TextStyle appBarTextStyle =
      TextStyle(color: textColor, fontSize: 18.0);
  static const TextStyle bodyTextStyle =
      TextStyle(color: textColor, fontSize: 16.0);
  static const TextStyle titleTextStyle =
      TextStyle(color: textColor, fontSize: 22.0);
  static const TextStyle addressButtonTextStyle =
      TextStyle(color: addressButtonColor, fontSize: 14.0);
  static const TextStyle priceTitleTextStyle =
      TextStyle(fontSize: 36.0, fontWeight: FontWeight.w600);
  static const TextStyle priceSubtitleTextStyle =
      TextStyle(fontSize: 16.0, color: subtitleColor);
  static const TextStyle subtitleTextStyle =
      TextStyle(fontSize: 16.0, color: subtitleColor);
  static const TextStyle bottomButtonTextStyle =
      TextStyle(color: bottomButtonTitleColor, fontSize: 16.0);
  static const TextStyle ratingTextStyle =
      TextStyle(fontSize: 16.0, color: AppStyle.ratingTextColor);
  static const TextStyle showMoreTextStyle =
      TextStyle(fontSize: 16.0, color: AppStyle.showMoreTextColor);
  static const TextStyle textFieldTextStyle =
      TextStyle(color: textFieldTextColor, fontSize: 16.0);
  static const TextStyle smallTextStyle =
      TextStyle(color: subtitleColor, fontSize: 14.0);

  static const InputDecoration textFieldDecoration = InputDecoration(
    labelStyle: TextStyle(color: AppStyle.textFieldLabelColor),
    prefixStyle: AppStyle.bodyTextStyle,
    filled: true,
    fillColor: AppStyle.textFieldColor,
    border: UnderlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
    isDense: true,
    errorStyle: TextStyle(height: 0),
  );
}
