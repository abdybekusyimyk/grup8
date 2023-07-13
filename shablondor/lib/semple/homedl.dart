// import 'package:flutter/material.dart';

// class Homedl extends StatefulWidget {
//   Homedl({Key? key, required this.almash}) : super(key: key);
//   bool almash = false;

//   @override
//   // ignore: library_private_types_in_public_api
//   _HomedlState createState() => _HomedlState();
// }

// class _HomedlState extends State<Homedl> {
//   IconData dark = Icons.wb_sunny;
//   IconData night = Icons.nights_stay;

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('AppBar'), actions: [
//         IconButton(
//           icon: Icon(widget.almash ? dark : night),
//           tooltip: 'Open shopping cart',
//           onPressed: () {
//             setState(() {});
//             widget.almash = !widget.almash;
//           },
//         ),
//       ]),
//       body: const Center(
//           child: Text(
//         'Text',
//         style: TextStyle(fontSize: 30),
//       )),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Homedl extends StatelessWidget {
  const Homedl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.back_hand),
      )),
      body: Center(
          child: Text(
        'Text',
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}
