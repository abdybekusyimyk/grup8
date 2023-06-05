import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Appbarcardwidget extends StatelessWidget {
  Appbarcardwidget({required this.icon, super.key});

  IconData? icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Card(
        color: Colors.white,
        child: Icon(
          icon,
          size: 25,
          color: Colors.black87,
        ),
      ),
    );
  }
}
