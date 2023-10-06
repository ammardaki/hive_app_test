
import 'package:hive_aap/model/transaction.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Boxes {
  static Box<Transaction> getTransactions() =>
      Hive.box<Transaction>('transactions');
}