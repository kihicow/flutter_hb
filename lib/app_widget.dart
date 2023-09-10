import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_style.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData(
      fontFamily: 'SF-Pro-Display',
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        titleTextStyle: AppStyle.appBarTextStyle,
        iconTheme: IconThemeData(color: AppStyle.iconColor),
        elevation: 0.0,
      ),
      colorScheme: Theme.of(context)
          .colorScheme
          .copyWith(background: AppStyle.backgroundColor),
      primaryIconTheme: const IconThemeData(color: AppStyle.iconColor),
      textTheme: TextTheme(
        headlineMedium: const TextStyle(fontSize: 22, color: Colors.black),
        titleMedium: const TextStyle(fontSize: 16, color: Colors.black),
        titleSmall:
            TextStyle(fontSize: 14, color: Theme.of(context).disabledColor),
      ),
    );

    return MaterialApp.router(
      routerConfig: Modular.routerConfig,
      debugShowCheckedModeBanner: false,
      theme: themeData,
    );
  }
}
