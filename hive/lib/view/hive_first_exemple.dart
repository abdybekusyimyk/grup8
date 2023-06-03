import 'package:flutter/material.dart';

class HiveFirstExemple extends StatelessWidget {
  const HiveFirstExemple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemple Hive'),
        centerTitle: true,
      ),
      body: Container(
        // alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('+'),
      ),
    );
  }
}
