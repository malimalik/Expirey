/*
  This class holds all the widgets for the side menu, also known as what appears when 
  the hamburger icon is clicked. Users can either swipe right or just press the 
  icon to access the menu.
*/

import 'dart:ui';

import 'package:flutter/material.dart';

class sideMenu extends StatefulWidget {
  @override
  _sideMenuState createState() => _sideMenuState();
}

class _sideMenuState extends State<sideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    
        child:
            ListView(padding: EdgeInsets.only(bottom: 10), children: <Widget>[
      DrawerHeader(
        child: Text("Expirey"),
        
      ),
      ListTile(
        title: Text("All Categories"),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        title: Text("Settings"),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ]));
  }
}
