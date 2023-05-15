// import 'package:calculator/theme/text.dart';
// import 'package:flutter/material.dart';

// class HomeView extends StatefulWidget {
//   const HomeView({Key? key}) : super(key: key);

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   int maani = 0;

//   void viewText() {
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: const Text(
//             'Calculator',
//             style: TextStyle(fontSize: 25),
//           ),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.more_vert),
//               onPressed: () {},
//             )
//           ]),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 1,
//             child: Container(
//               color: Colors.white,
//               child: Text(
//                 "$maani",
//                 style: const TextStyle(fontSize: 50),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Container(
//               color: Colors.black12,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Expanded(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Knopka(
//                           text: 'AC',
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                         Knopka(
//                           text: '<-',
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                         Knopka(
//                           text: '%',
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                         Knopka(
//                           text: '/',
//                           color: Colors.white38,
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Knopka(
//                           text: Sandar.jeti.toString(),
//                           onPress: (v) {
//                             setState(() {
//                               maani = 7;
//                             });
//                           },
//                         ),
//                         Knopka(
//                           text: '8',
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                         Knopka(
//                           text: '9',
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                         Knopka(
//                           text: 'x',
//                           color: Colors.white38,
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Knopka(
//                           text: '4',
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                         Knopka(
//                           text: '5',
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                         Knopka(
//                           text: '6',
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                         Knopka(
//                           text: '-',
//                           color: Colors.white30,
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Knopka(
//                           text: '1',
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                         Knopka(
//                           text: '2',
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                         Knopka(
//                           text: '3',
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                         Knopka(
//                           text: '+',
//                           color: Colors.white38,
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Knopka(
//                           text: '< >',
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                         Knopka(
//                           text: '0',
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                         Knopka(
//                           text: '.',
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                         Knopka(
//                           text: '=',
//                           color: Colors.red,
//                           onPress: (v) {
//                             maani = 7;
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ignore: must_be_immutable
// class Knopka extends StatelessWidget {
//   Knopka({super.key, required this.text, this.color, required this.onPress});
//   String text;
//   Color? color;
//   void Function(int) onPress;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 75,
//       width: 75,
//       child: FittedBox(
//         child: FloatingActionButton(
//           onPressed: () {},
//           // focusColor: Colors.white,
//           // foregroundColor: Colors.black,
//           shape: RoundedRectangleBorder(
//               // side: const BorderSide(width: 0, color: Colors.white),
//               borderRadius: BorderRadius.circular(20)),
//           backgroundColor: color ?? Colors.white,
//           child: Center(
//             child: Text(
//               text,
//               style: const TextStyle(fontSize: 22, color: Colors.black),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
