import 'package:flutter/material.dart';
import 'package:Expirey/Classes/transactionList.dart';
import 'package:Expirey/Classes/transaction.dart';
import 'dart:ui';

class Eggs extends StatefulWidget {
  @override
  _EggsState createState() => _EggsState();
}

Color textColor = new Color(707070);
String itemName = 'eggs';
 List<Transaction> transactions;

void deleteTx(Transaction trans) {
  return;
}

class _EggsState extends State<Eggs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: ('Add a new Transaction'),
      ),
      body: ListView(
        children: [
          new Column(
            children: [
              new Container(
                child: new Image(image: AssetImage('Assets/eggs.png')),
              ),
              Align(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'Eggs',
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
              TransactionList(transactions, deleteTx, itemName)
              /* Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Available',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromRGBO(70, 70, 70, 1)),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Text('2',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromRGBO(70, 70, 70, 1)),
                                  textAlign: TextAlign.right),
                            ),
                          ),
                        ],
                      )),
                ],
              ), */
            ],
          ),
        ],
      ),
    );
  }
}
