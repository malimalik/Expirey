/// The class that allows to construct a new instance in the database and add a new transaction (item in the stock).
import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/material.dart';
import 'dart:ui';

class Transaction {
  DatabaseReference id;
  final DateTime expirationDate;
  final String category;
  final String itemName;
  int quantity;

  /// Constructor
  Transaction(
      {@required this.expirationDate,
      @required this.category,
      @required this.itemName,
      @required this.quantity});

  /// This method will be used for setting the id everytime a new transaction is made.
  void setId(DatabaseReference id) {
    this.id = id;
  }
  /// A map is created here with key value pairs which allows to convert to Json. This ensures uniqueness in the databse.
  Map<String, dynamic> toJson() {
    return {
      'expirationDate': this.expirationDate,
      'category': this.category,
      'itemName': this.itemName,
      'quantity': this.quantity,
    };
  }
}
