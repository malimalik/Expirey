import 'dart:ui';
import 'package:Expirey/bottomNavBar.dart';
import 'package:Expirey/homeWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../homePage.dart';

class Meat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeWidget(),
      appBar: AppBar(
        title: Text(
          'Meat',
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
                child: Image.asset(
                    'Assets/191004-red-meat-grocery-store-2007-ac-919p_514940e7fa4de1fedf43f727b77312e3.jpg'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                        Align(
                          alignment: Alignment.centerRight,
                          child: new OutlineButton(
                            color: Colors.purple,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0)),
                            onPressed: null,
                            onLongPress: null,
                            child: Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.all(20),
                              padding: EdgeInsets.all(50),
                              child: Text('Beef',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 22)),
                            ),
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
                    child: Row(
                      children: [
                        Image(
                            alignment: Alignment.topCenter,
                            image: AssetImage(
                                'Assets/chicken_emoji_icon_png_1024x1024.png'),
                            width: 100,
                            height: 100),
                        TextButton(
                          onPressed: null,
                          onLongPress: null,
                          child: Container(
                            color: Colors.transparent,
                            margin: EdgeInsets.all(30),
                            padding: EdgeInsets.all(20),
                            child: Text('Chicken',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 22)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Image(
                            alignment: Alignment.topCenter,
                            image: AssetImage(
                                'Assets/Turkey_Iphone_Emoji_JPG_1024x1024.png'),
                            width: 100,
                            height: 100),
                      ),
                      TextButton(
                        onPressed: null,
                        onLongPress: null,
                        child: Container(
                          color: Colors.transparent,
                          margin: EdgeInsets.all(30),
                          padding: EdgeInsets.all(15),
                          child: Text('Turkey',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 22)),
                        ),
                      )
                    ],
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
