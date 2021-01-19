///This class contains the bottom navigation bar which will be found on every single page.
///

import 'package:Expirey/homePage.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();

  // This instance property holds all the widgets

}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> children = [
    HomePage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //onTap: onTappedBar,
        currentIndex: _currentIndex,
        iconSize: 25,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
           BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
