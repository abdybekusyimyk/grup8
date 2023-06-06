import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sipleflutter/core/assets_constants.dart';

class Exemple extends StatelessWidget {
  Exemple({
    Key? key,
  }) : super(key: key);

  final String name = "Syimyk";
  static const String aty = "Syimyk";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AssetsConstants.kok,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Animate(
              effects: [
                FadeEffect(),
                SlideEffect(),
              ],
              child: Text('data'),
            ),
            Text('data').animate().fade(duration: 2000.milliseconds).slide(),
            Text('data').animate().fade(begin: .1, end: .8),
            Text(
              'data',
              style: TextStyle(fontSize: 40),
            ).animate().tint(color: Colors.teal).then().shake(),
          ],
        ),
      ),
    );
  }
}
