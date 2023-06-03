import 'package:flutter/material.dart';
import 'package:flutter_application_1/model.dart';
import 'package:hive/hive.dart';

class TwoExemple extends StatelessWidget {
  TwoExemple({Key? key}) : super(key: key);

  TextEditingController? name = TextEditingController();
  TextEditingController? age = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var person = Hive.box('person');
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 80),
            TextField(
              controller: name,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 40),
            TextField(
              controller: age,
              decoration: InputDecoration(
                labelText: 'Age',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          person.add(Model(name: name!.text, age: int.parse(age!.text)));
        },
      ),
    );
  }
}
