import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Calculator',
            style: TextStyle(fontSize: 25),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            )
          ]),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: const Text(''),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Knopka(
                          text: 'AC',
                        ),
                        Knopka(
                          text: '<-',
                        ),
                        Knopka(
                          text: '%',
                        ),
                        Knopka(
                          text: '/',
                          color: Colors.white38,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Knopka(
                          text: '7',
                        ),
                        Knopka(
                          text: '8',
                        ),
                        Knopka(
                          text: '9',
                        ),
                        Knopka(
                          text: 'x',
                          color: Colors.white38,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Knopka(
                          text: '4',
                        ),
                        Knopka(
                          text: '5',
                        ),
                        Knopka(
                          text: '6',
                        ),
                        Knopka(
                          text: '-',
                          color: Colors.white30,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Knopka(
                          text: '1',
                        ),
                        Knopka(
                          text: '2',
                        ),
                        Knopka(
                          text: '3',
                        ),
                        Knopka(
                          text: '+',
                          color: Colors.white38,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Knopka(
                          text: '< >',
                        ),
                        Knopka(
                          text: '0',
                        ),
                        Knopka(
                          text: '.',
                        ),
                        Knopka(
                          text: '=',
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Knopka extends StatelessWidget {
  Knopka({super.key, required this.text, this.color});
  String text;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 75,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: () {},
          // focusColor: Colors.white,
          // foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
              // side: const BorderSide(width: 0, color: Colors.white),
              borderRadius: BorderRadius.circular(20)),
          backgroundColor: color ?? Colors.white,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 22, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
