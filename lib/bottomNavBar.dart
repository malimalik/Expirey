///This class contains the bottom navigation bar which will be found on every single page.
///
import 'dart:ui';

import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
   int _currentIndex = 0;
  // This instance property holds all the widgets
  
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 25,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
        
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
