import 'package:flutter/material.dart';
import 'package:kit/modules/home/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kit',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
