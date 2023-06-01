import 'package:counter_provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${context.watch<CounterProvider>().san.toString()}",
              style: TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterProvider>().increament();
                    },
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 50),
                    )),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterProvider>().decriment();
                    },
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 50),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
