///This class holds all the widgets for the home page.
///
///This is the hub that allows us to access all of the food items that we have available.

import 'dart:ui';

import 'package:Expirey/Categories/meat.dart';
import 'package:flutter/material.dart';
import './Categories/dairy.dart';
import './Categories/drinks.dart';
import './Categories/pantry.dart';
import './Categories/fruitsAndVegetables.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

/// Allows to navigate to the different screens.
///
/// Takes in the argument context and a StatelessWidget which helps determine which screen to navigate to
void navigateTo(BuildContext context, StatefulWidget nav) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => nav));
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
                  // Here, we wrap a container inside of the card so that we are able to achieve
                  // the padding that is needed to create symmetric cards.
                  child: ButtonTheme(
                    buttonColor: Colors.white,
                    // minWidth: 50,
                    //height: 50,
                    padding: EdgeInsets.all(2),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00)),
                      onPressed: () {
                        navigateTo(context, Dairy());
                      },
                      child: Container(
                        height: 145,
                        width: 130,
                        padding: EdgeInsets.all(35),
                        child: Column(
                          children: [
                            new Image(
                              image:
                                  AssetImage('Assets/cheese-wedge_1f9c0.png'),
                              height: 45,
                              width: 45,
                            ),
                            Text(
                              "Dairy",
                              style: TextStyle(fontSize: 20.00),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  color: Colors.white),
              Card(
                  margin: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.00)),
                  child: ButtonTheme(
                    buttonColor: Colors.red[100],
                    padding: EdgeInsets.all(2),
                    child: RaisedButton(
                      onPressed: () {
                        navigateTo(context, Meat());
                      },
                      padding: EdgeInsets.all(1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00)),
                      child: Container(
                        height: 145,
                        width: 130,
                        padding: EdgeInsets.all(35),
                        child: Column(
                          children: [
                            new Image(
                              image: AssetImage('Assets/1f969.png'),
                              height: 45,
                              width: 45,
                            ),
                            Text(
                              "Meat",
                              style: TextStyle(fontSize: 20.00),
                            ),
                          ],
                        ),
                      ),
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
                  child: ButtonTheme(
                    buttonColor: Colors.green[100],
                    padding: EdgeInsets.all(1),
                    child: RaisedButton(
                      onPressed: () {
                        navigateTo(context, Drinks());
                      },
                      padding: EdgeInsets.all(1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00)),
                      child: Container(
                        height: 145,
                        width: 130,
                        padding: EdgeInsets.all(28),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('Assets/1f379.png'),
                              height: 45,
                              width: 45,
                            ),
                            Text(
                              "Drinks",
                              style: TextStyle(fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  color: Colors.green[100]),
              Card(
                  margin: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.00)),
                  child: ButtonTheme(
                    buttonColor: Colors.brown[100],
                    padding: EdgeInsets.all(1),
                    child: RaisedButton(
                      onPressed: () {
                        navigateTo(context, Pantry());
                      },
                      padding: EdgeInsets.all(1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00)),
                      child: Container(
                        height: 145,
                        width: 130,
                        padding: EdgeInsets.all(30),
                        child: SizedBox(
                          child: Column(
                            children: [
                              new Image(
                                image:
                                    AssetImage('Assets/12578-cooked-rice.png'),
                                height: 45,
                                width: 45,
                              ),
                              Text(
                                "Pantry",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
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
                child: ButtonTheme(
                  buttonColor: Colors.red[200],
                  padding: EdgeInsets.all(1),
                  child: RaisedButton(
                    onPressed: () {
                      navigateTo(context, FruitsAndVegetables());
                    },
                    padding: EdgeInsets.all(1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.00)),
                    child: Container(
                      height: 130,
                      width: 130,
                      padding: EdgeInsets.all(25),
                      child: SizedBox(
                        child: Column(
                          children: [
                            Image(
                                image: new AssetImage('Assets/1f95d.png'),
                                height: 45,
                                width: 35),
                            Text(
                              "Fruits",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
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
