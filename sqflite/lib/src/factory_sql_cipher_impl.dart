import 'package:sqflite/sqlite_api.dart';
import 'package:sqflite_sqlcipher/src/database_sql_cipher_impl.dart';

import 'sqflite_import.dart';
import 'sqflite_sql_cipher_impl.dart';

DatabaseFactory _databaseFactory;

/// Default factory
DatabaseFactory get databaseFactory => sqlfliteSqlCipherDatabaseFactory;

/// Default factory
DatabaseFactory get sqlfliteSqlCipherDatabaseFactory =>
    _databaseFactory ??= SqfliteSqlCipherDatabaseFactoryImpl(invokeMethod);

/// Factory implementation.
class SqfliteSqlCipherDatabaseFactoryImpl
    with SqfliteDatabaseFactoryMixin
    implements SqfliteInvokeHandler {
  /// Factory ctor.
  SqfliteSqlCipherDatabaseFactoryImpl(this._invokeMethod);

  final Future<dynamic> Function(String method, [dynamic arguments])
      _invokeMethod;

  @override
  Future<T> invokeMethod<T>(String method, [dynamic arguments]) async =>
      (await _invokeMethod(method, arguments)) as T;

  @override
  SqfliteDatabase newDatabase(
      SqfliteDatabaseOpenHelper openHelper, String path) {
    return SqfileSqlCipherDatabaseImpl(openHelper, path);
  }
}
