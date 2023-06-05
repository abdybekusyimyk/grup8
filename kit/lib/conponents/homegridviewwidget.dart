import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kit/constants/assets/assets.dart';
// import 'package:kit/constants/assets/assets.dart';
// import 'package:kit/theme/custom/typography/apptext.dart';

// ignore: must_be_immutable
class Homegridviewwidget extends StatelessWidget {
  Homegridviewwidget({
    required this.text,
    // required this.svg,
    required this.child,
    super.key,
  });

  String text;
  // String svg;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Column(
          children: [
            SizedBox(
              width: 120,
              height: 50,
              child: Card(color: Colors.white, child: child
                  // Icon(
                  //   SvgPicture.asset('assetName')

                  //   // color: Colors.black87,
                  // ),
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
