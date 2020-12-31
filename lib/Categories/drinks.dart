/// This class is the new screen that the user is taken to
///
/// when they press the "Dairy" button on the homepage.
import 'dart:ui';
import 'package:Expirey/bottomNavBar.dart';
import 'package:Expirey/homeWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../homePage.dart';

class Drinks extends StatelessWidget {
  final textColor = const Color(707070);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* bottomNavigationBar: HomeWidget(),
      appBar: AppBar(
        title: Text(
          'Dairy',
          style: TextStyle(color: Colors.black54, fontFamily: 'Roboto'),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0.00,
        bottomOpacity: 0.0,
        shadowColor: Colors.white,
      ), */
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
                  image: AssetImage(
                      'Assets/650x350_living_with_a_milk_allergy_ref_guide.jpg'),
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
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
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
                        minWidth: 60,
                        height: 45,
                        buttonColor: Colors.grey[50],
                        child: RaisedButton(
                          onPressed: () {},
                          onLongPress: () {},
                          child: Text('Soda',
                              style: TextStyle(
                                  color: Color.fromRGBO(70, 70, 70, 1),
                                  fontSize: 20)),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                        minWidth: 20,
                        height: 45,
                        buttonColor: Colors.grey[50],
                        child: RaisedButton(
                          onPressed: () {},
                          onLongPress: () {},
                          child: Text('Energy Drinks',
                              style: TextStyle(
                                  color: Color.fromRGBO(70, 70, 70, 1),
                                  fontSize: 20)),
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
                      minWidth: 60,
                      height: 45,
                      buttonColor: Colors.grey[50],
                      child: RaisedButton(
                        onPressed: () {},
                        onLongPress: () {},
                        child: Text(
                          'Orange Juice',
                          style: TextStyle(
                              color: Color.fromRGBO(70, 70, 70, 1),
                              fontSize: 20),
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
