import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class FirstExemple extends StatefulWidget {
  FirstExemple({Key? key}) : super(key: key);

  @override
  State<FirstExemple> createState() => _FirstExempleState();
}

class _FirstExempleState extends State<FirstExemple> {
  TextEditingController? controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var box = Hive.box('cars');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Text(box.get('1k'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(box.name);
          setState(() {});
          box.put('1k', controller?.text);
        },
        child: const Text(
          '+',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
