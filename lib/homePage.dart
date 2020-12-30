///This class holds all the widgets for the home page.
///
///This is the hub that allows us to access all of the food items that we have available.

import 'dart:ui';

import 'package:Expirey/Categories/meat.dart';
import 'package:flutter/material.dart';
import './Categories/dairy.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

/// Allows to navigate to the Dairy Screen.
///
///
void navigateToDairy(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Dairy()));
}

/// Allows to navigate to the meats section
void navigateToMeat(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Meat()));
}
void navigateToDrinks(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Drinks()));
}
void navigateToPantry(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Pantry()));
}
void navigateToF(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => FruitsAndVegetables()));
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
                        navigateToDairy(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(35),
                        child: Text(
                          "Dairy",
                          style: TextStyle(fontSize: 20.00),
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
                        navigateToMeat(context);
                      },
                      padding: EdgeInsets.all(1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00)),
                      child: Container(
                        padding: EdgeInsets.all(35),
                        child: Text(
                          "Meat",
                          style: TextStyle(fontSize: 20.00),
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
                      onPressed: () {},
                      padding: EdgeInsets.all(1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00)),
                      child: Container(
                        padding: EdgeInsets.all(35),
                        child: Text(
                          "Drinks",
                          style: TextStyle(fontSize: 19),
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
                      onPressed: () {},
                      padding: EdgeInsets.all(1),
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
                    onPressed: () {},
                    padding: EdgeInsets.all(1),
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
                  ),
                ),
                color: Colors.red[200]),
          ]),
        ],
      ),
    );
  }
}
