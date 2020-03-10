import 'dart:async';
import 'dart:core';

import 'services_impl.dart';

export 'package:sqflite_sqlcipher/src/collection_utils.dart';
export 'package:sqflite_sqlcipher/src/utils.dart';

/// Sqflite channel name
const String channelName = 'com.davidmartos96.sqflite_sqlcipher';

/// Sqflite channel
const MethodChannel channel = MethodChannel(channelName);

/// Temp flag to test concurrent reads
final supportsConcurrency = false;

/// Invoke a native method
Future<T> invokeMethod<T>(String method, [dynamic arguments]) =>
    channel.invokeMethod<T>(method, arguments);
