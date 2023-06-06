import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Appbarcardwidget extends StatelessWidget {
  Appbarcardwidget({required this.child, super.key});

  Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Card(color: Colors.white, child: child),
    );
  }
}
