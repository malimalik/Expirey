import 'dart:ui';

import 'package:flutter/material.dart';

class bottomNavBar extends StatefulWidget {
  @override
  _bottomNavBarState createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 25,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.inventory),
          label: 'My Supply',
        ),
      ],
    );
  }
}
