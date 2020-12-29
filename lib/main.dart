import 'dart:ui';

import 'package:Expirey/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
import 'sideMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the  application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expirey',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'My Supplies'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          "My Supplies",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0.00,
        bottomOpacity: 0.0,
        shadowColor: Colors.white,
      ),
      body: HomePage(),
      drawer: SideMenu(),
    );
  }
}
