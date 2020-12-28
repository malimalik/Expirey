import 'dart:ui';

import 'package:flutter/material.dart';
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                    margin: EdgeInsets.all(20),
                    borderOnForeground: false,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.00)),
                    child: Container(
                      padding: EdgeInsets.all(35),
                      child: Text(
                        "Dairy",
                        style: TextStyle(fontSize: 20.00),
                      ),
                    ),
                    color: Colors.white),
                Card(
                    margin: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.00)),
                    child: Container(
                      padding: EdgeInsets.all(35),
                      child: Text(
                        "Meat",
                        style: TextStyle(fontSize: 20.00),
                      ),
                    ),
                    color: Colors.red[100]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                    margin: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.00)),
                    child: Container(
                      padding: EdgeInsets.all(35),
                      child: Text(
                        "Drinks",
                        style: TextStyle(fontSize: 19),
                      ),
                    ),
                    color: Colors.green[100]),
                Card(
                    margin: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.00)),
                    child: Container(
                      padding: EdgeInsets.all(35),
                      child: SizedBox(
                        child: Text(
                          "Pantry",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    color: Colors.brown[100]),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Card(
                  margin: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.00)),
                  child: Container(
                    padding: EdgeInsets.all(35),
                    child: SizedBox(
                      child: Text(
                        "Fruits & Veggies",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  color: Colors.red[200]),
            ]),
          ],
        ),
      );
      
    
  }
}