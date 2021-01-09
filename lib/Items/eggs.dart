import 'package:Expirey/Classes/database.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:Expirey/Classes/transactionList.dart';
import 'package:Expirey/Classes/transaction.dart';
import 'package:Expirey/Classes/modalSheet.dart';
import 'dart:ui';

class Eggs extends StatefulWidget {

  String name;

  Eggs(this.name);
  String getName()
  {
    return this.name;
  }

  @override
  _EggsState createState() => _EggsState();
}




Color textColor = new Color(707070);


class _EggsState extends State<Eggs> {

  List<Transaction> transactions = [];

  /// The following method allows to add new transactions. It uses the constructor from the Transaction class.
  void _newTransactions(
      DateTime expirationDate, String category, String itemName, int quantity) {
    final newTrans = Transaction(
        expirationDate: expirationDate,
        category: category,
        itemName: itemName,
        quantity: quantity);

    /// This is the new line that has been added
    newTrans.setId(saveTransaction(newTrans));

    this.setState(() {
      transactions.add(newTrans);
    });
  }

  void _deleteTransactions(String id) {
    setState(() {
      transactions.removeWhere((transactions) {
        transactions.quantity = transactions.quantity--;
        return transactions.id == id;
      });
    });
  }

  int func() {
    return 1;
  }

  /// This method brings up the modal bottom sheet that lets the user
  ///
  /// add another item by choosing different categories and items.

  void promptTransaction(BuildContext ctx) {
    showModalBottomSheet(
        isDismissible: true,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: NewTransaction(_newTransactions),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
      Eggs n = new Eggs("Eggs");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[100],
        child: Icon(Icons.add),
        onPressed: () {
          promptTransaction(context);
        },
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
                    n.getName(),
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
              TransactionList(transactions, n.getName())
            ],
          ),
        ],
      ),
    );
  }
}
