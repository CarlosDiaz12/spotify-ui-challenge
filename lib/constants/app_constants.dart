import 'package:flutter/material.dart';

class AppConstants {
  static ThemeData getAppTheme(BuildContext context) {
    return ThemeData(
      canvasColor: const Color(0xff000000),
      colorScheme: const ColorScheme(
        primary: Color(0xff1db954),
        primaryVariant: Color(0xff1ed760),
        secondary: Color(0xff1ed760),
        secondaryVariant: Color(0xff1ed760),
        surface: Colors.white,
        background: Color(0xff191414),
        error: Colors.red,
        onPrimary: Color(0xff191414),
        onSecondary: Color(0xff191414),
        onSurface: Color(0xff191414),
        onBackground: Colors.white,
        onError: Colors.white,
        brightness: Brightness.dark,
      ),
      fontFamily: 'CircularStd',
      textTheme: TextTheme(
        headline1: Theme.of(context).textTheme.headline1?.copyWith(
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w900,
            ),
        headline2: Theme.of(context).textTheme.headline2?.copyWith(
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w700,
            ),
        bodyText1: Theme.of(context).textTheme.bodyText1?.copyWith(
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w500,
            ),
        bodyText2: Theme.of(context).textTheme.bodyText2?.copyWith(
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w300,
            ),
        caption: Theme.of(context).textTheme.caption?.copyWith(
              fontFamily: 'CircularStd',
              fontWeight: FontWeight.w200,
            ),
      ),
    );
  }
}
