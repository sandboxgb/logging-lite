import 'dart:async';
import 'package:logging_lite/logging.dart';

Future<T> runWithTraceAsync<T>(
    Object description, Future<T> Function() body) async {
  return body.call().then((result) {
    logSuccess("$description: $result");
    return result;
  }).catchError((onError) {
    logError("$description: $onError");
    throw onError;
  });
}

T runWithTrace<T>(Object description, T Function() body) {
  try {
    var result = body.call();
    logSuccess("$description: $result");
    return result;
  } catch (onError) {
    logError("$description: $onError");
    throw onError;
  }
}
