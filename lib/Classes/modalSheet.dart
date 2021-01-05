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
  final quantityController = TextEditingController();

  DateTime _expirationDateController = DateTime.now();

  // Date picker widget

  Future<Null> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _expirationDateController,
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    );

    if (picked != null && picked != _expirationDateController) {
      setState(() {
        _expirationDateController = picked;
      });
    }
  }

  /// Validates the quantity and the expiration date to make sure that they are within the range
  void valideQtyAndDate() {
    if (quantityController.text.isEmpty ||
        _expirationDateController.isBefore(DateTime.now())) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          elevation: 5,
          backgroundColor: Colors.red[100],
          title: Text("Invalid Entry"),
          content: Text("Please enter a valid quantity and a valid date"),
        ),
      );
      return;
    } else {
      widget.newTransaction(
        _expirationDateController, 'a', 'b', double.parse(quantityController.text)
      );

      Navigator.of(context).pop();
    }
  }

/* 
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
  } */

  String dropValue = 'Meat';
  String item = 'Eggs';
  Color primary = Colors.redAccent[100];

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
                  style: TextStyle(color: Colors.black),
                  underline: Container(
                    height: 2,
                    color: primary,
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
                  style: TextStyle(color: Colors.black),
                  underline: Container(
                    height: 2,
                    color: primary,
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
                onSubmitted: (_) => valideQtyAndDate(),
                keyboardType: TextInputType.number,
                //onChanged: (val) => amountInput = val,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text(_expirationDateController == null
                        ? 'No expiration date has been chosen'
                        : DateFormat.yMd().format(_expirationDateController)),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    selectDate(context);
                  },
                  child: Text('Select an expiration date')),
              Align(
                alignment: Alignment.center,
                child: RaisedButton(
                  child: Icon(Icons.done_all_rounded),
                  onPressed: () {
                    valideQtyAndDate();
                  },
                  padding: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  color: Colors.redAccent[100],
                  //label: Text(
                  // 'Done',
                  // style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
