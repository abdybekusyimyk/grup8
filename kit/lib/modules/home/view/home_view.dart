import 'package:flutter/material.dart';
import 'package:kit/conponents/appbarcardwidget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F5),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Appbarcardwidget(
              icon: Icons.settings_outlined,
            ),
            const CircleAvatar(backgroundColor: Colors.tealAccent, radius: 28),
            Appbarcardwidget(
              icon: Icons.notifications,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 300,
                height: 300,
                child: Card(
                  color: Colors.tealAccent,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
