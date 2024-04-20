import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showToastMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    behavior: SnackBarBehavior.fixed
  ));
}
