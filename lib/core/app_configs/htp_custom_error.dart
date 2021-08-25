import 'package:flutter/material.dart';

class HtpCustomError extends Error {
  final String? code;
  final String? message;

  HtpCustomError({@required this.code, @required this.message});

  @override
  String toString() => 'HtpCustomError(message: $message)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is HtpCustomError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

class NoInternetError extends HtpCustomError {
  NoInternetError()
      : super(code: "NO_INTERNET", message: "Unable to connect to internet");
}
