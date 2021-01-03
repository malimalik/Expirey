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
        height: MediaQuery.of(context).size.height * 0.6,
        child: transactions?.isEmpty ?? true
            ? Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'It appears that you have no transactions yet, press the add button on the bottom right corner to get started.',
                    ),
                  ),
                  SizedBox(height: 50),
                  Image.network(
                    'https://www.pngitem.com/pimgs/m/434-4341211_transparent-guy-thinking-png-illustration-question-mark-idea.png',
                    height: 200,
                    width: 200,
                    alignment: Alignment.center,
                  ),
                ],
              )
            : ListView.builder(itemBuilder: null));
  }
}
