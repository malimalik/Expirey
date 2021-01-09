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
    return Eggs("Milk");
  }
}
