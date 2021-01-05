import 'package:flutter/material.dart';
import 'package:Expirey/Classes/transaction.dart';
import 'package:Expirey/Items/eggs.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  List<Transaction> transactions;

  Function deleteTransactions;

  final String item;

  TransactionList(this.transactions, this.deleteTransactions, this.item);

  /// I will need to apply hash maps over here because it needs to be able to match the quantity of the transaction and according to that,
  ///
  /// it will be able to assign them.

  int totalQuantity(List<Transaction> transactions, int index) {
    int sum = 0;
    for (index = 0; index < transactions.length; index++) {
      sum = sum + transactions[index].quantity;
    }
    return sum;
  }

  /// It calculates the difference between the current date and the expiration
  ///
  /// date and lets you know how long before a product expires.
  int diffDate(DateTime date) {
    final difference = date.difference(DateTime.now()).inDays;
    return difference;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      child: transactions?.isEmpty ?? true
          ? Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  child: Image(
                    image: AssetImage('Assets/stock.png'),
                  ),
                ),
              ],
            )
          : ListView.builder(itemCount: transactions.length, itemBuilder: (context, index,) {
          
              int diff = diffDate(transactions[index].expirationDate);
              int totalSum = totalQuantity(transactions, index);

              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15),
                      child: Text(
                          '   Total Available        ' + totalSum.toString())),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: new Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 10),
                            child: Text('Expire(s) in ' + diff.toString() + ' days'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 175),
                          child: Container(
                            alignment: Alignment.bottomRight,
                            child: new Text(
                                transactions[index].quantity.toStringAsFixed(0)),

                            /// This child over here will need to have access to the quantity, using the index of that particular transactions, where the
                            /// category is dairy and the item name is egg, will need matching.
                          ),
                        ),
                      ],
                    ),
                  ),
                 /*  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Expires in ' + diff.toString() + ' days'),
                      ),
                    ),
                  ) */
                ],
              );
            }),
    );
  }
}
