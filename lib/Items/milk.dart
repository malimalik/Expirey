import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:Expirey/Classes/database.dart';
import 'package:Expirey/Classes/transactionList.dart';
import 'package:Expirey/Classes/transaction.dart';
import 'package:Expirey/Classes/modalSheet.dart';

import 'eggs.dart';

class Milk extends StatefulWidget {
  @override
  _MilkState createState() => _MilkState();
}

class _MilkState extends State<Milk> {
  @override
  Widget build(BuildContext context) {
    // Since the eggs and the milk class share the same characteristics, it makes sense to just change the name.
    // This reduces redundancy in the code.
    return Eggs("Milk");
  }
}
