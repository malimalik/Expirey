/// This class is the new screen that the user is taken to
///
/// when they press the "Dairy" button on the homepage.
import 'dart:ui';

import 'package:flutter/material.dart';
import '../homePage.dart';

class Dairy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                  image: AssetImage('Assets/butter1_wide-b23d6a7af9100ca3d155a4bd7a2f90e2ae3d1bfe.jpg'),
                  width: 200,
                  height: 200),
            ],
          )
        ],
      ),
    );
  }
}
