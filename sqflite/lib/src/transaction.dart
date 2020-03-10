import 'package:sqflite_sqlcipher/sqlite_api.dart';
import 'package:sqflite_sqlcipher/src/batch.dart';
import 'package:sqflite_sqlcipher/src/database.dart';
import 'package:sqflite_sqlcipher/src/database_mixin.dart';

/// Transaction implementation
class SqfliteTransaction
    with SqfliteDatabaseExecutorMixin
    implements Transaction {
  /// Create a transaction on a given [database]
  SqfliteTransaction(this.database);

  /// The transaction database
  final SqfliteDatabase database;

  @override
  SqfliteDatabase get db => database;

  /// True if a transaction is successfull
  bool successful;

  @override
  SqfliteTransaction get txn => this;

  @override
  Batch batch() => SqfliteTransactionBatch(this);
}
