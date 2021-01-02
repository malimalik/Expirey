import 'package:flutter/material.dart';
import 'package:Expirey/Classes/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  Function deleteTransactions;
  final String item;
  TransactionList(this.transactions, this.deleteTransactions, this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *0.6,

      child: transactions.isEmpty ?
      Column(
        children: [Container(
         child: Image(image: AssetImage('Assets/out_of_stock.png')),
        
        ),
        Text('It appears that you are all out of stock for ' +item)],


      ),
    );
  }
}
