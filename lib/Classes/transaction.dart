/// This class has the constructor for the transactions.
/// 
/// The transactions are basically 
import 'package:flutter/material.dart';
import 'dart:ui';

class Transaction {
  final String id;
  final DateTime expirationDate;
  final String category;
  final String itenName;

  ///
  /// This constructor allows
  Transaction(
      {@required this.id,
      @required this.expirationDate,
      @required this.category,
      @required this.itenName});
}
