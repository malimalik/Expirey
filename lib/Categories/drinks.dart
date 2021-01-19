/// This class is the new screen that the user is taken to
///
/// when they press the "Dairy" button on the homepage.
import 'dart:ui';
import 'package:Expirey/Items/energyDrink.dart';
import 'package:Expirey/Items/juice.dart';
import 'package:Expirey/Items/soda.dart';
import 'package:Expirey/bottomNavBar.dart';
import 'package:Expirey/homeWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../homePage.dart';
import '../sideMenu.dart';

class Drinks extends StatefulWidget {
  @override
  _DrinksState createState() => _DrinksState();
}

class _DrinksState extends State<Drinks> {
  final textColor = const Color(707070);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: SideMenu(),
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
                  image: AssetImage('Assets/drinks.png'),
                  width: 400,
                ),
              ),
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Drinks',
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
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 55),
                          child: Image(
                              alignment: Alignment.topCenter,
                              image: AssetImage('Assets/soda-emoji-3.png'),
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
                              navigateTo(context, Soda());
                            },
                            onLongPress: () {},
                            child: Align(
                              child: Text('Soda',
                                  style: TextStyle(
                                      color: Color.fromRGBO(70, 70, 70, 1),
                                      fontSize: 14)),
                            ),
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
                              image: AssetImage('Assets/energy_drink.png'),
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
                               navigateTo(context, EnergyDrink());
                            },
                            onLongPress: () {},
                            child: Text('Energy Drinks',
                                style: TextStyle(
                                    color: Color.fromRGBO(70, 70, 70, 1),
                                    fontSize: 14)),
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
                            image: AssetImage('Assets/juice.png'),
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
                             navigateTo(context, Juice());
                          },
                          onLongPress: () {},
                          child: Text(
                            'Juice',
                            style: TextStyle(
                                color: Color.fromRGBO(70, 70, 70, 1),
                                fontSize: 14),
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
