import 'package:firebase_database/firebase_database.dart';

/// This class has the constructor for the transactions.
///
/// The transactions are basically
import 'package:flutter/material.dart';
import 'dart:ui';

class Transaction {
  DatabaseReference id;
  final DateTime expirationDate;
  final String category;
  final String itemName;
  int quantity;

  ///
  /// This constructor allows
  Transaction(
      {@required this.expirationDate,
      @required this.category,
      @required this.itemName,
      @required this.quantity});

  /// This method will be used for setting the id for a specific transactions
  void setId(DatabaseReference id) {
    this.id = id;
  }

  Map<String, dynamic> toJson()
  {
    return {
      'Expiration_Date' : this.expirationDate,
      'Category' : this.category,
      'Item_Name' : this.itemName,
      'Quantity' : this.quantity
    };
  } 
}
