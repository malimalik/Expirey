/// This class instantiates the database and connects the front end to the back end.

import 'package:firebase_database/firebase_database.dart';

import '../Classes/transaction.dart';

final databaseRef = FirebaseDatabase.instance.reference();

DatabaseReference saveTransaction(Transaction transaction) {
  /// The id is used for a PRIMARY KEY, that is, to uniquely identify each transaction.
  var id = databaseRef.child('transactions/').push();
  //
  id.set(transaction.toJson());
  return id;
}
