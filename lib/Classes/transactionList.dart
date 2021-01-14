import 'package:flutter/material.dart';
import 'package:Expirey/Classes/transaction.dart';
import 'package:Expirey/Items/eggs.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  List<Transaction> transactions;

  Function deleteTransactions;

  final String item;

  TransactionList(this.transactions, this.item);

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  /// I will need to apply hash maps over here because it needs to be able to match the quantity of the transaction and according to that,
  ///
  /// it will be able to assign them.

  /// This method sums up the quantity of items available.
  int totalQuantity(List<Transaction> transactions, int index) {
    int sum = 0;
    for (index = 0; index < transactions.length; index++) {
      sum = sum + transactions[index].quantity;
    }
    return sum;
  }

  /// Calculates the difference between the current date and the expiration
  ///
  /// date and outputs the difference in days.
  int diffDate(DateTime date) {
    final difference = date.difference(DateTime.now()).inDays;
    return difference;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      // If there are no transactions (no stock available), display a picture that reads "Out of Stock".
      child: widget.transactions?.isEmpty ?? true
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
          // Otherwise, use a list builder and populate it with transactions (stock available).
          : ListView.builder(
              itemCount: widget.transactions.length,
              itemBuilder: (
                context,
                index,
              ) {
                int diff = diffDate(widget.transactions[index].expirationDate);
                int totalSum = totalQuantity(widget.transactions, index);
                final item = widget.transactions[index];

                return Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          '   Total Available        ' + totalSum.toString(),
                          style: TextStyle(
                              color: Color.fromRGBO(70, 70, 70, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                    Dismissible(
                        background: Container(
                          color: Colors.red,
                          child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        onDismissed: (direction) {
                          setState(() {
                            widget.transactions.removeAt(index);
                          });
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text("Dismissed")));
                        },
                        key: ValueKey(item),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: ListTile(
                            title: Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'Expire(s) in ' +
                                          diff.toString() +
                                          ' days                             ' +
                                          widget.transactions[index].quantity
                                              .toString(),
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ],
                );
              }),
    );
  }
}
