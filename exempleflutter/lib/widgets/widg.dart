import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widg extends StatelessWidget {
  Widg({Key? key}) : super(key: key);
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$a",
              style: TextStyle(fontSize: 60),
            ),
            ElevatedButton(
                onPressed: () {
                  a++;
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 60),
                ))
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text(
              "$a",
              style: TextStyle(fontSize: 60),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                  a++;
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 60),
                )),
            Text(
              "$a",
              style: TextStyle(fontSize: 60),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                  a++;
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 60),
                )),
            NewWidget(a: a),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                  a++;
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 60),
                ))
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatefulWidget {
  const NewWidget({
    super.key,
    required this.a,
  });

  final int a;

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "${widget.a}",
      style: TextStyle(fontSize: 60),
    );
  }
}
