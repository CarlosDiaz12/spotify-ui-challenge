import 'package:flutter/material.dart';

import 'floating_control_widget.dart';

class BottomNavigationWidget extends StatefulWidget {
  final Function(int index) onItemChanged;
  const BottomNavigationWidget({
    Key? key,
    required this.onItemChanged,
  }) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationWidget> {
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    var _textTheme = Theme.of(context).textTheme.bodyText1?.copyWith(
          fontSize: 13,
          letterSpacing: 0.5,
        );
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingControlWidget(),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
              ),
            ),
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.library_music),
                  label: 'My Library',
                ),
              ],
              onTap: (index) {
                setState(() {
                  _currentTabIndex = index;
                  widget.onItemChanged.call(index);
                });
              },
              currentIndex: _currentTabIndex,
              showUnselectedLabels: true,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.white,
              selectedLabelStyle: _textTheme,
              unselectedLabelStyle: _textTheme,
              iconSize: 32,
              backgroundColor: Theme.of(context).canvasColor.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }
}
