# sqflite_sqlcipher

This is a fork from the plugin [sqflite](https://github.com/tekartik/sqflite).  **Up to date with version 1.2.2+1**

This fork uses the Dart implementation of `sqflite` but with a different native implementation which uses the SqlCipher library on both iOS and Android. 

The SQLCipher version of the plugin is 4.10. If you try to open a database encrypted with a lower version of SQLCipher, the plugin will try to migrate it to a new version using the operation `PRAGMA cipher_migrate` (This automatic migration to version 4 is only done in Android. PR welcome for this feature in iOS).

### Install and use

To add it in your project include this in the `pubspec.yml`.
```
dependencies:
  sqflite_sqlcipher: {latest version}
```

```dart
import 'package:sqflite_sqlcipher/sqflite.dart';

Database db = await openDatabase(
  path,
  password: "my password",
  // onCreate, onUpgrade...
);
```

### iOS
**REQUIRED:** Include this in your iOS `Podfile`
```
pod 'SQLCipher', '~>4.1.0'
```
If you try to use a database encrypted with a SqlCipher version lower than 4, the version in the Podfile can be changed to a lower one `'~>3.4.2'`. But note that if doing that, the running database on Android will be version 4 (since it migrates automatically) and on iOS will be version 3.

### Android
**REQUIRED:** Flutter now enables code shrinking by default when building an APK in release mode, so you need to add the following ProGuard rules to the file `android/app/proguard-rules.pro`. If it does not exist, create it:

```
-keep class net.sqlcipher.** { *; }
```

---

## Sqflite documentation

* [Documentation](https://github.com/tekartik/sqflite/blob/master/sqflite/README.md)