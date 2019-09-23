# sqflite_sqlcipher

This is a fork from the plugin [sqflite](https://github.com/tekartik/sqflite).  **Up to date with version 1.1.6+1**

This fork adds an optional parameter "password" to open encrypted databases.

The SQLCipher version of the plugin is 4.10. If you try to open a database encrypted with a lower version of SQLCipher, the plugin will try to migrate it to a new version using the operation "PRAGMA cipher_migrate".

To add it in your project include this in the `pubspec.yml`. 
```
dependencies:
  sqflite: (whichever since it will be overriden with this fork)
  
dependency_overrides:
  sqflite:
    git:
      url: https://www.github.com/davidmartos96/sqflite_sqlcipher.git
      path: sqflite
      ref: ca34ad9acf0d49e0e80498fdac6e963f6af82af3
```
Dependency overrides are used to avoid conflict with other projects that depend on "normal" sqflite. For example https://github.com/renefloor/flutter_cache_manager



SQLite plugin for [Flutter](https://flutter.io).
Supports both iOS and Android.

* Support transactions and batches
* Automatic version managment during open
* Helpers for insert/query/update/delete queries
* DB operation executed in a background thread on iOS and Android

## Documentation

* [Documentation](https://github.com/tekartik/sqflite/blob/master/sqflite/README.md)
* [API reference](https://pub.dartlang.org/documentation/sqflite/latest/sqflite/sqflite-library.html)
* [How to](https://github.com/tekartik/sqflite/blob/master/sqflite/doc/how_to.md) guide
