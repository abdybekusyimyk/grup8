import 'package:flutter/material.dart';
// import 'package:shablondor/13grp/oop.dart';
// import 'package:shablondor/semple/wid.dart';
import 'package:shablondor/semple/homedl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool almash = false;

  IconData dark = Icons.wb_sunny;
  IconData night = Icons.nights_stay;

  ThemeData lightTheme =
      ThemeData(primarySwatch: Colors.amber, brightness: Brightness.light);

  ThemeData darkTheme = ThemeData(
    // primarySwatch: ThemeData.light().scaffoldBackgroundColor,
    primaryColor: Colors.red,
    colorScheme: ColorScheme.dark().copyWith(primary: Colors.teal),
    brightness: Brightness.dark,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: almash ? darkTheme : lightTheme,
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text('AppBar'), actions: [
          IconButton(
            icon: Icon(almash ? dark : night),
            tooltip: 'Open shopping cart',
            onPressed: () {
              setState(() {});
              almash = !almash;
            },
          ),
        ]),
        body: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homedl()),
              );
            },
            child: Text(
              'Text',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        floatingActionButton: ElevatedButton(
          child: Text('text'),
          onPressed: () {},
        ),
      ),
    );
  }
}
