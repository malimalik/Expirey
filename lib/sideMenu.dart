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
          decoration: BoxDecoration(color: Colors.red),

          padding: EdgeInsets.all(8.0),
          // margin: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
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