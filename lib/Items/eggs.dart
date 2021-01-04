import 'package:flutter/material.dart';
import 'package:Expirey/Classes/transactionList.dart';
import 'package:Expirey/Classes/transaction.dart';
import 'package:Expirey/Classes/modalSheet.dart';
import 'dart:ui';

class Eggs extends StatefulWidget {
  @override
  _EggsState createState() => _EggsState();
}

Color textColor = new Color(707070);
String itemName = 'eggs';

class _EggsState extends State<Eggs> {
  List<Transaction> transactions = [];

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


  void deleteTx(String id) {
    setState(() {
      transactions.removeWhere((transactions) {
        transactions.quantity = transactions.quantity--;
        return transactions.id == id;
      });
    });
  }


   void promptTransaction(BuildContext ctx) {
    showModalBottomSheet(
        isDismissible: true,
        isScrollControlled: true,
        backgroundColor: Colors.amber,
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: ModalSheet(),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

/*   int displayQuantity(List<Transaction> transactions, String itemName) {
    int quantity = 0;
    for (int i = 0; i < transactions.length; i++) {
      if (transactions[i].itemName == itemName) {
        quantity = transactions[i].quantity;
      }
    }
    return quantity;
  }
 */
  /// This method will keep a count of the overall quantity for a particular purchase

  /// This following method is able to delete the transactions.
  ///
  /// This method is invoked when the user wishes to delete an item or the item has expired.
  /// This is the function that is invoked for the onPressed with the delete icon, done with a long press.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
      
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
