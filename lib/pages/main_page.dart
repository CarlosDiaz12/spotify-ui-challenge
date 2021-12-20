import 'package:flutter/material.dart';
import 'package:spotify_ui_challenge/pages/home/home_page.dart';
import 'package:spotify_ui_challenge/pages/library/library_page.dart';
import 'package:spotify_ui_challenge/pages/search/search_page.dart';
import 'package:spotify_ui_challenge/pages/widgets/bottom_navigation.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pageController = PageController();
  void _onItemChanged(int index) {
    setState(() {
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        children: [
          HomePage(),
          SearchPage(),
          LibraryPage(),
        ],
        controller: _pageController,
      ),
      bottomNavigationBar:
          BottomNavigationWidget(onItemChanged: _onItemChanged),
    );
  }
}
