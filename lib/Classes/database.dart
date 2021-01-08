import 'package:firebase_database/firebase_database.dart';
import 'modalSheet.dart';
import 'transactionList.dart';
import 'package:Expirey/Items/eggs.dart';
import 'transaction.dart';

/// This gets a reference for the database and allows us to access the data from the backend
///
final databaseRef = FirebaseDatabase.instance.reference();

/// In order to save a particular transaction, we just have to add a method
///
///

DatabaseReference saveTransaction(Transaction transaction) {
  /// when we create an ID over here, this comment is basically saying that we wish to create a new object by the name of transaction, that is, a directory
  ///
  /// and then on top of that, we wish to push the objects into the trees.
  /// The id is used for a PRIMARY KEY .
  var id = databaseRef.child('transactions/').push();
  //
  id.set(transaction.toJson());
  return id;
}
