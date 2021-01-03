import 'package:flutter/material.dart';
import 'package:Expirey/Classes/transaction.dart';

class TransactionList extends StatelessWidget {
  List<Transaction> transactions = [];
  Function deleteTransactions;
  final String item;
  TransactionList(this.transactions, this.deleteTransactions, this.item);

  void addTransactions(
      DateTime expirationDate, String category, String itemName) {
    final newTrans = Transaction(
        id: DateTime.now().toString(),
        expirationDate: expirationDate,
        category: category,
        itemName: itemName);
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
                  )
                ],
              );
            }),
    );
  }
}
