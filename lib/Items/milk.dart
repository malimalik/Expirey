
import 'package:Expirey/Items/genericNav.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:Expirey/Data/database.dart';
import 'package:Expirey/Widgets/transactionList.dart';
import 'package:Expirey/Classes/transaction.dart';
import 'package:Expirey/Widgets/modalSheet.dart';

import '../sideMenu.dart';

class Milk extends StatefulWidget {
  @override
  _MilkState createState() => _MilkState();
}

// primary text color used.
Color textColor = new Color(707070);

class _MilkState extends State<Milk> {
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
          GenericNav("Milk", Image(image: AssetImage('Assets/milk.png'))),
          TransactionList(transactions, "Milk")
        ],
      ),
    );
  }
}
