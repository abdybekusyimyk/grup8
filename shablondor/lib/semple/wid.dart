import 'package:flutter/material.dart';

class Wid extends StatelessWidget {
  const Wid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
          alignment: Alignment.center,
          heightFactor: 40.0,
          // widthFactor: 30.2,
          child: Container(
            // alignment: Alignment.centerRight,
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 1,
                  offset: Offset(5, -30), // changes position of shadow
                ),
              ],
            ),
            // transform: Matrix4.skewX(1.5),
            // transformAlignment: Alignment.centerRight,
            foregroundDecoration:
                BoxDecoration(border: Border.all(color: Colors.black)),
          )),
    );
  }
}
