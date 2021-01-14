import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  final Function newTransaction;

  NewTransaction(this.newTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {

  // primary color used in this widget.
  Color primary = Colors.redAccent[100];
  // Used to enter quantity.
  final quantityController = TextEditingController();
  // Used to hold the expiration date for a product.
  DateTime _expirationDateController = DateTime.now();

  /// This method allows the user to select a date.
  Future<Null> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _expirationDateController,
      // It would not make sense to enter products that have already expired.
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    );

    // handles the edge case and makes sure that the user does not enter a past date/time and that they actually pick an expiration date.
    if (picked != null && picked != _expirationDateController) {
      setState(() {
        _expirationDateController = picked;
      });
    }
  }

  /// An alert dialog box which appears if the the user does not enter a quantity.
  void valideQtyAndDate() {
    if (quantityController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          elevation: 5,
          backgroundColor: Colors.red[100],
          title: Text("Invalid Entry"),
          content: Text("Please enter a valid quantity"),
        ),
      );
      return;
    } else {
      widget.newTransaction(_expirationDateController, 'a', 'b',
          int.parse(quantityController.text));

      Navigator.of(context).pop();
    }
  }

  String category = 'Meat';
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
                  value: category,
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
                      category = newValue;
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
