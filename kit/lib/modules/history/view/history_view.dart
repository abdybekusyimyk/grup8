import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F5),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [Color(0xffFF8122), Color(0xffFF375F)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: const Center(
                child: Text(
                  'Expense',
                  style: TextStyle(color: Colors.white),
                ),
              ), //declare your widget here
            ),
            Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.circular(10),
                // gradient: const LinearGradient(
                //   colors: [Color(0xffFF8122), Color(0xffFF375F)],
                //   begin: Alignment.centerLeft,
                //   end: Alignment.centerRight,
                // ),
              ),
              child: const Center(
                child: Text(
                  'Income',
                  style: TextStyle(color: Colors.black),
                ),
              ), //declare your widget here
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HistoriElemetDate(
                text: 'D',
              ),
              HistoriElemetDate(text: 'W'),
              HistoriElemetDate(
                text: 'M',
                color: Colors.green,
              ),
              HistoriElemetDate(text: 'Y'),
              HistoriElemetDate(text: 'All'),
              const SizedBox(
                width: 55,
                height: 55,
                child: Card(
                  child: Center(
                    child: Icon(Icons.calendar_month),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [Text('data'), Text('data')],
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class HistoriElemetDate extends StatelessWidget {
  HistoriElemetDate({
    super.key,
    required this.text,
    this.color,
  });

  String text;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: 55,
        height: 55,
        child: Card(
          color: color,
          child: Center(
            child: Text(
              // textAlign: TextAlign.center,
              text,
              style: const TextStyle(fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}
