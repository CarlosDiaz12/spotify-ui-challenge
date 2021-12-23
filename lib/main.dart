import 'package:flutter/material.dart';
import 'package:spotify_ui_challenge/constants/app_constants.dart';
import 'package:spotify_ui_challenge/pages/main_page.dart';
import 'package:spotify_ui_challenge/pages/player/player_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify UI',
      theme: AppConstants.getAppTheme(context),
      home: const MainPage(),
      routes: {
        PlayerPage.routeName: (ctx) => PlayerPage(),
      },
    );
  }
}
