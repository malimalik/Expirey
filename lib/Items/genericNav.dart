import 'dart:collection';
import 'dart:io';

import 'package:Expirey/Classes/database.dart';
import 'package:Expirey/sideMenu.dart';
import 'package:flutter/material.dart';
import 'package:Expirey/Classes/transactionList.dart';
import 'package:Expirey/Classes/transaction.dart';
import 'package:Expirey/Classes/modalSheet.dart';
import 'dart:ui';

class GenericNav extends StatefulWidget {
  String _name;
  Image _image;

  GenericNav(this._name, this._image);

  String get getName {
    return this._name;
  }

  @override
  _GenericNavState createState() => _GenericNavState();
}

// primary text color used.
Color textColor = new Color(707070);

class _GenericNavState extends State<GenericNav> {
  String name;
  Image image;
  _GenericNavState(this.name, this.image);

  // Initialized as an empty list of transactions. This list is used to store the transactions.
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
    // Eggs n = new Eggs("Eggs");
    return Scaffold(
      drawer: SideMenu(),
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
              new Container(child: nav.image),
              Align(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    GenericNav.getName(),
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
              TransactionList(transactions, "Eggs")
            ],
          ),
        ],
      ),
    );
  }
}
