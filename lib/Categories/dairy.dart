/// This class is the new screen that the user is taken to
///
/// when they press the "Dairy" button on the homepage.
import 'dart:ui';

import 'package:Expirey/Items/butter.dart';
import 'package:Expirey/Items/milk.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../Items/eggs.dart';

class Dairy extends StatefulWidget {
  @override
  _DairyState createState() => _DairyState();
}

/// This method allows to further navigate to items in the this category.
void navigateTo(BuildContext context, StatefulWidget nav) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => nav));
}

class _DairyState extends State<Dairy> {
  // Primiary text color used.
  final textColor = const Color(707070);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavBar(),
      extendBody: true,
      body: ListView(scrollDirection: Axis.vertical, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                child: Image(
                  image: AssetImage('Assets/dairy.png'),
                  width: 400,
                ),
              ),
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Dairy',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(70, 70, 70, 1),
                      fontSize: 44),
                ),
              ),
              alignment: Alignment.center,
            ),
            Align(
              child: new Image(
                image: AssetImage('Assets/red-line-png-0.png'),
                width: 30,
                height: 25,
              ),
              alignment: Alignment.center,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 55),
                          child: Image(
                              alignment: Alignment.topCenter,
                              image: AssetImage('Assets/1f95a.png'),
                              width: 100,
                              height: 100),
                        ),
                      ),
                      ButtonTheme(
                        buttonColor: Colors.red[100],
                        child: SizedBox(
                          height: 50,
                          width: 125,
                          child: RaisedButton(
                            onPressed: () {
                              navigateTo(context, Eggs());
                            },
                            onLongPress: () {},
                            child: Text('Eggs',
                                style: TextStyle(
                                    color: Color.fromRGBO(70, 70, 70, 1),
                                    fontSize: 20)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 55),
                          child: Image(
                              alignment: Alignment.topCenter,
                              image: AssetImage('Assets/1f9c8.png'),
                              width: 100,
                              height: 100),
                        ),
                      ),
                      ButtonTheme(
                        buttonColor: Colors.red[100],
                        child: SizedBox(
                          height: 50,
                          width: 125,
                          child: RaisedButton(
                            onPressed: () {
                              navigateTo(context, Butter());
                            },
                            onLongPress: () {},
                            child: Text('Butter',
                                style: TextStyle(
                                    color: Color.fromRGBO(70, 70, 70, 1),
                                    fontSize: 20)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      child: Padding(
                        padding: EdgeInsets.only(right: 55),
                        child: Image(
                            alignment: Alignment.topCenter,
                            image: AssetImage('Assets/1f95b.png'),
                            width: 100,
                            height: 100),
                      ),
                    ),
                    ButtonTheme(
                      buttonColor: Colors.red[100],
                      child: SizedBox(
                        height: 50,
                        width: 125,
                        child: RaisedButton(
                          onPressed: () {
                            navigateTo(context, Milk());
                          },
                          onLongPress: () {},
                          child: Text(
                            'Milk',
                            style: TextStyle(
                                color: Color.fromRGBO(70, 70, 70, 1),
                                fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            )
          ],
        ),
      ]),
    );
  }
}
