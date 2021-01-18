import 'dart:async';

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
    // Since the eggs and the milk class share the same attributes, it makes sense to introduce an instance of Eggs and change the diisplay
    // name using the constructor.
    // This reduces redundancy in the code.
    return Eggs("Milk");
  }
}
