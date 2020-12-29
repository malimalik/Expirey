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
              Navigator.pop(context);
            },
            child: Text('Go back!'),
          )
        ],
      ),
    );
  }
}
