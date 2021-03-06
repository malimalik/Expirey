import 'dart:ui';
import 'package:Expirey/Items/beef.dart';
import 'package:Expirey/Items/chicken.dart';
import 'package:Expirey/Items/turkey.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../sideMenu.dart';

class Meat extends StatefulWidget {
  @override
  _MeatState createState() => _MeatState();
}

class _MeatState extends State<Meat> {
  void navigateTo(BuildContext context, StatefulWidget nav) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => nav));
  }

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
                  image: AssetImage('Assets/beef.png'),
                  width: 400,
                ),
              ),
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Meat',
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
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 50),
                          child: Image(
                            image: AssetImage(
                                'Assets/kisspng-steak-meat-beef-clip-art-rotten-meat-cliparts-5a8499172ddc68.2838564315186393831879.png'),
                            width: 100,
                            height: 100,
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 60,
                          height: 45,
                          buttonColor: Colors.red[100],
                          child: SizedBox(
                            height: 50,
                            width: 135,
                            child: RaisedButton(
                              onPressed: () {
                                navigateTo(context, Beef());
                              },
                              onLongPress: () {},
                              child: Text(
                                'Beef',
                                style: TextStyle(
                                    color: Color.fromRGBO(70, 70, 70, 1),
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 50),
                          child: Image(
                            image: AssetImage(
                                'Assets/chicken_emoji_icon_png_1024x1024.png'),
                            width: 100,
                            height: 100,
                          ),
                        ),
                        ButtonTheme(
                          buttonColor: Colors.red[100],
                          child: SizedBox(
                            height: 50,
                            width: 135,
                            child: RaisedButton(
                              onPressed: () {
                                navigateTo(context, Chicken());
                              },
                              onLongPress: () {},
                              child: Text(
                                'Chicken',
                                style: TextStyle(
                                    color: Color.fromRGBO(70, 70, 70, 1),
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 50),
                          child: Image(
                            image: AssetImage(
                                'Assets/Turkey_Iphone_Emoji_JPG_1024x1024.png'),
                            width: 100,
                            height: 100,
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 60,
                          height: 45,
                          buttonColor: Colors.red[100],
                          child: SizedBox(
                            height: 50,
                            width: 135,
                            child: RaisedButton(
                              onPressed: () {
                                navigateTo(context, Turkey());
                              },
                              onLongPress: () {},
                              child: Text(
                                'Turkey',
                                style: TextStyle(
                                    color: Color.fromRGBO(70, 70, 70, 1),
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
