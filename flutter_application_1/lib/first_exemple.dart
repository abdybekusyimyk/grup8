import 'package:flutter/material.dart';
import 'package:flutter_application_1/two_exemple.dart';
import 'package:hive/hive.dart';

class FirstExemple extends StatefulWidget {
  const FirstExemple({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Container(
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
              SizedBox(height: 100),
              Text(box.get('1k')),
              SizedBox(height: 100),
              ListView.builder(
                shrinkWrap: true,
                itemCount: box.values.length,
                itemBuilder: ((context, index) => Text(
                      box.values.toList()[index],
                    )),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              print(box.name);
              setState(() {});
              // box.put('1k', controller?.text);
              box.add(controller?.text);
            },
            child: const Text(
              '+',
              style: TextStyle(fontSize: 40),
            ),
          ),
          const SizedBox(height: 40),
          FloatingActionButton(
            onPressed: () {
              setState(() {});
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TwoExemple()),
              );
            },
            child: const Icon(Icons.person_add_alt_rounded),
          ),
        ],
      ),
    );
  }
}
