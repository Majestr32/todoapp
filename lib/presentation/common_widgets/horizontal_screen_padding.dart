import 'package:flutter/material.dart';

class HorizontalScreenPadding extends StatelessWidget {
  final Widget child;

  const HorizontalScreenPadding({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }
}
