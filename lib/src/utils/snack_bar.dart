import 'package:flutter/material.dart';

/// Shows [message] in a snack bar as long as a [ScaffoldMessengerState]
/// with global key [scaffoldMessengerKey] is anywhere in the widget tree.
void showSnackBar(
  String? message, {
  bool isError = false,
  Color backgroundColor = Colors.indigo,
}) {
  if (message != null && message != '') {
    final messenger = scaffoldMessengerKey.currentState;
    messenger?.showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: isError ? Colors.red : backgroundColor,
      ),
    );
  }
}

/// Use this when creating [MaterialApp] if you want [showSnackBar] to work.
final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey(debugLabel: 'scaffoldMessengerKey');
