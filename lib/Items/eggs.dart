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
List<Transaction> transactions = [];

class _EggsState extends State<Eggs> {
  /// The following method allows to add new transactions. It uses the constructor from the Transaction class.
  void addTransactions(
      DateTime expirationDate, String category, String itemName, int quantity) {
    final newTrans = Transaction(
        id: DateTime.now().toString(),
        expirationDate: expirationDate,
        category: category,
        itemName: itemName,
        quantity: quantity);
    setState(() {
      transactions.add(newTrans);
    });
  }

  /// This method will keep a count of the overall quantity for a particular purchase
  int cumSum(List<Transaction> transactions) {
    int sum = 0;
    for (int i = 0; i < transactions.length; i++) {
      sum = sum + transactions[i].quantity;
    }
  }

  /// This following method is able to delete the transactions.
  ///
  /// This method is invoked when the user wishes to delete an item or the item has expired.
  void deleteTx(String id) {
    setState(() {
      transactions.removeWhere((transactions) {
        return transactions.id == id;
      });
    });
  }

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
