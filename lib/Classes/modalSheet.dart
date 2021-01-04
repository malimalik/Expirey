import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  final Function newTransaction;

  NewTransaction(this.newTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  final quantityController = TextEditingController();

  DateTime _date = DateTime.now();

  // Date picker widget

  Future<Null> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1970),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;
      });
    }
  }

  void submit() {
    if (amountController.text.isEmpty && titleController.text.isEmpty) {
      //if no amount has been entered, the user gets a message to enter the amount
      showDialog(
          barrierDismissible: true,
          context: context,
          builder: (_) => AlertDialog(
                title: Text("No Data Entered"),
                content:
                    Text("Please enter an amount, a title and select a date"),
              ));
      return;
    }

    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    //if the user does not fill out the title field, they get a message
    if (enteredTitle.isEmpty && amountController.text.isNotEmpty) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("No title detected"),
          content: Text("Please enter a title"),
        ),
      );
      return;
      //if the user enters an invalid amount, such as zero or a negative amount
    } else if (enteredTitle.isNotEmpty &&
        (enteredAmount.isNegative || amountController.text.isEmpty)) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Invalid amount detected"),
          content: Text("Please enter a valid amount"),
        ),
      );
      return;
      //if the user does not choose the date of their transaction
    } else if (_date == null) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("No date selected"),
          content: Text("Please choose a date"),
        ),
      );
      return;
    } else

      //the .widget property gives me access to the widget properties
      //it is not possible to access the widget's property inside the state function with .widget
      widget.newTransaction(enteredTitle, enteredAmount, _date);

    Navigator.of(context).pop();
  }

  String dropValue = 'Meat';
  String item = 'Eggs';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 0,
        child: Container(
          padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: MediaQuery.of(context).viewInsets.bottom + 10),
          // height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Align(alignment: Alignment.bottomLeft, child: Text('Category')),
              Align(
                alignment: Alignment.bottomLeft,
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropValue,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropValue = newValue;
                    });
                  },
                  items: <String>['Meat', 'Pantry', 'Drinks', 'Dairy', 'Fruits']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Align(alignment: Alignment.bottomLeft, child: Text('Item')),
              Align(
                alignment: Alignment.bottomLeft,
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: item,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      item = newValue;
                    });
                  },
                  items: <String>[
                    'Eggs',
                    'Butter',
                    'Milk',
                    'Beef',
                    'Chicken',
                    'Turkey',
                    'Soda',
                    'Energy Drinks',
                    'Juice',
                    'Rice',
                    'Pasta',
                    'Cookies',
                    'Bananas',
                    'Strawberries',
                    'Oranges',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              TextField(
                autocorrect: true,
                enableSuggestions: true,
                decoration: InputDecoration(
                    labelText: 'Quantity', hintText: 'Quantity purchased'),
                controller: quantityController,
                onSubmitted: (_) => submit(),
                keyboardType: TextInputType.number,
                //onChanged: (val) => amountInput = val,
              ),
              Row(
                children: <Widget>[
                  Text(_date == null
                      ? 'No expiration date has been chosen'
                      : DateFormat.yMd().format(_date)),
                ],
              ),
              RaisedButton.icon(
                onPressed: () {
                  submit();
                },
                padding: EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0),
                ),
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                color: Platform.isIOS ? Colors.purple : Colors.red,
                label: Text(
                  'Add Transaction',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
