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
      extendBody: true,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24),
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
          ElevatedButton(
            onPressed: () {
              // Here, the pop() method allows to transfer from this screen, that is, Dairy, back to the HomePage.
              Navigator.pop(context);
            },
            child: Text('Go back!'),
          )
        ],
      ),
    );
  }
}
