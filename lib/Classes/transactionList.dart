import 'package:flutter/material.dart';
import 'package:Expirey/Classes/transaction.dart';
import 'package:Expirey/Items/eggs.dart';

class TransactionList extends StatefulWidget {
  List<Transaction> transactions = [];

  Function deleteTransactions;

  final String item;
  TransactionList(this.transactions, this.deleteTransactions, this.item);

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  /// I will need to apply hash maps over here because it needs to be able to match the quantity of the transaction and according to that,
  ///
  /// it will be able to assign them.
  int totalQauntity(List<Transaction> transactions) {
    int sum = 0;
    for (int i = 0; i < transactions.length; i++) {
      if (transactions[i].itemName == widget.item) {
        sum = sum + transactions[i].quantity;
      }
    }
    return sum;
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
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
          : ListView.builder(itemBuilder: (context, index) {
              return Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: new Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Available'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text('\$${widget.transactions[index]}'),

                      /// This child over here will need to have access to the quantity, using the index of that particular transactions, where the
                      /// category is dairy and the item name is egg, will need matching.
                    ),
                  ),
                ],
              );
            }),
    );
  }
}
