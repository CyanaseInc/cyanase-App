import 'package:flutter/material.dart';

Color kprimary = Color(0xFF242A59);
Color mprimary = Color(0xFF3C426B);
Color kmprimary = Color(0xFF53597D);
Color kSecondary = Color(0xFFF6A92E);
Color kregButtonColor = Color(0xFF242A59); //304FFE
Color kInputBorderColor = Color(0xFF707070);
Color appbackground = Color(0xFFF5F5F5);
Color kinputText = Color(0xFFC6C6C6);
Color kmutedbackground = Color(0xFFFAFAFA);
Color kcloudColor = Color(0xFFF2C4BFE);
Color knotcolor = Color(0xFF2B4BFE);
double kpadding = 20.0;
double kmargin = 40.0;
Color kqmuted = Color(0xFF868686);

class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xFF242A59, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xf202650), //10%
      100: const Color(0xf1d2247), //20%
      200: const Color(0xf191d3e), //30%
      300: const Color(0xf161935), //40%
      400: const Color(0xf12152d), //50%
      500: const Color(0xf0e1124), //60%
      600: const Color(0xf0b0d1b), //70%
      700: const Color(0xf070812), //80%
      800: const Color(0xf040409), //90%
      900: const Color(0xf000000), //100%
    },
  );
} // you can de
