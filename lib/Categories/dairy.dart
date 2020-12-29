/// This class is the new screen that the user is taken to
///
/// when they press the "Dairy" button on the homepage.
import 'dart:ui';
import 'package:Expirey/bottomNavBar.dart';
import 'package:Expirey/homeWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../homePage.dart';

class Dairy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeWidget(),
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
      ),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Row(
                      children: [
                        Image(
                            alignment: Alignment.centerLeft,
                            image: AssetImage(
                                'Assets/health-benefits-of-eggs-732x549-thumbnail-732x549.jpg'),
                            width: 150,
                            height: 150),
                        TextButton(
                          onPressed: null,
                          onLongPress: null,
                          child: Container(
                            color: Colors.white,
                            height: 150,
                            width: 100,
                            margin: EdgeInsets.all(30),
                            padding: EdgeInsets.all(20),
                            child: Text('Milk',
                                style: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image(
                        alignment: Alignment.centerLeft,
                        image: AssetImage(
                            'Assets/butter1_wide-b23d6a7af9100ca3d155a4bd7a2f90e2ae3d1bfe.jpg'),
                        width: 150,
                        height: 150),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image(
                        alignment: Alignment.centerLeft,
                        image: AssetImage('Assets/almond_milk_recipe.jpg'),
                        width: 150,
                        height: 150),
                  ),
                ),
              ],
            )
          ],
        ),
      ]),
    );
  }
}
