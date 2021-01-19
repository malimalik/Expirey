import 'dart:ui';
import 'package:flutter/material.dart';

class GenericNav extends StatelessWidget {

  String name;
  Image mainImage;
  GenericNav(this.name, this.mainImage);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        new Container(
          child: mainImage,
        ),
        Align(
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              name,
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
      ],
    );
  }
}
