import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isFullSun = true;
  bool isDayMood = true;
  Duration duration = const Duration(seconds: 3);

  Future<void> basylganda(int value) async {
    if (value == 0) {
      setState(() {
        isDayMood = true;
      });
      await Future.delayed(const Duration(milliseconds: 400));
      setState(() {
        isFullSun = true;
      });
    } else {
      setState(() {
        isDayMood = false;
      });
      await Future.delayed(Duration(milliseconds: 400));
      setState(() {
        isFullSun = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Color> lightBgColors = [
      const Color(0xFF8C2480),
      const Color(0xFFCE587D),
      const Color(0xFFFF9485),
      if (isFullSun) const Color(0xFFFF9D80),
    ];
    var darkBgColors = const [
      Color(0xFF0D1441),
      Color(0xFF283584),
      Color(0xFF376AB2),
    ];

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: AnimatedContainer(
        duration: duration,
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: isDayMood ? lightBgColors : darkBgColors),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              top: 10,
              left: 100,
              right: 0,
              bottom: isFullSun ? -150 : 400,
              duration: duration,
              child: SvgPicture.asset('assets/icons/star.svg',
                  color: Colors.yellow,
                  height: 2,
                  width: 5,
                  fit: BoxFit.scaleDown),
            ),
            AnimatedPositioned(
                left: 0,
                right: 0,
                bottom: isFullSun ? -150 : 400,
                duration: duration,
                child: SvgPicture.asset(
                  'assets/icons/moon.svg',
                  color: Colors.yellow,
                  // fit: BoxFit.fill,
                )),
            AnimatedPositioned(
                left: 0,
                right: 0,
                bottom: isFullSun ? 400 : -150,
                duration: duration,
                child: SvgPicture.asset('assets/icons/Sun.svg')),
            Positioned(
              left: 0,
              right: 0,
              bottom: -30,
              child: Image.asset(
                'assets/images/land_tree_light.png',
                height: 430,
                fit: BoxFit.fitHeight,
              ),
            ),
            Column(
              children: [
                SizedBox(height: height * 0.1),
                Center(
                  child: Container(
                    width: width * 0.85,
                    height: 60,
                    decoration: const BoxDecoration(color: Colors.white24),
                    child: DefaultTabController(
                      length: 2,
                      child: TabBar(
                        onTap: (value) async {
                          await basylganda(value);
                        },
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: Colors.transparent,
                        indicator: BoxDecoration(color: Colors.white),
                        tabs: const [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.light_mode),
                              SizedBox(width: 15),
                              Tab(text: 'Morning'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.dark_mode),
                              SizedBox(width: 15),
                              Tab(text: 'Night'),
                            ],
                          ),
                        ],
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.white,
                        labelStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
