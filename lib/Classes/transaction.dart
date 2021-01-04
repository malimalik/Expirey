/// This class has the constructor for the transactions.
/// 
/// The transactions are basically 
import 'package:flutter/material.dart';
import 'dart:ui';

class Transaction {
  final String id;
  final DateTime expirationDate;
  final String category;
  final String itemName;
  int quantity;

  ///
  /// This constructor allows
  Transaction(
      {@required this.id,
      @required this.expirationDate,
      @required this.category,
      @required this.itemName, 
      @required this.quantity});
}


void set decrementQuantity(String id)
{
  quantity = quantity--;
}
