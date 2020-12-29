///This class holds all the widgets for the side menu, also known as what appears when
///
///the hamburger icon is clicked. Users can either swipe right or just press the icon to access the menu.

import 'dart:ui';

import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child:
            ListView(padding: EdgeInsets.only(bottom: 10), children: <Widget>[
      DrawerHeader(
        child: Text("Expirey"),
        decoration: BoxDecoration(color: Colors.red),
        padding: EdgeInsets.all(8.0),
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
