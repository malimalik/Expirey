import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

class ModalSheet extends StatefulWidget {
  final Function newTransaction;

  ModalSheet(this.newTransaction);

  @override
  _ModalSheetState createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {
  final itemNameController = DropDownFormField();

  final categoryController = DropDownFormField();

  DateTime expirationDate = DateTime.now();
  final quantity = TextEditingController();

 Future<Null> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: expirationDate,
      // We set the first date to now because the earliest the added item that is added
      // can expire at this very moment. Again, it is not expected that the user would
      // do this but that is the worst case scenarion
      firstDate: DateTime.now(),
      // The latest can item can expire is 2050. Again, unlikely but 
      // if this app is used for the next 30 years, we know that it will 
      // stand the test of time.
      lastDate: DateTime(2050),
    );

    if (picked != null && picked != expirationDate) {
      setState(() {
        expirationDate = picked;
      });
    }
  }

  void add()
  {
       if (!itemNameController.filled && !categoryController.filled) {
      //if no amount has been entered, the user gets a message to enter the amount
      showDialog(
          barrierDismissible: true,
          context: context,
          builder: (_) => AlertDialog(
                title: Text("No Data Entered"),
                content:
                    Text("Please pick a category and an item"),
              ));
      return;
    }

  }




  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
