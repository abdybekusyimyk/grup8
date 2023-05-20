import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

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
      await Future.delayed(Duration(microseconds: 400));
      setState(() {
        isFullSun = true;
      });
    } else {
      setState(() {
        isDayMood = false;
      });
      await Future.delayed(Duration(microseconds: 400));
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

    return AnimatedContainer(
      duration: duration,
      width: width,
      height: height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: isFullSun ? lightBgColors : darkBgColors)),
      child: Stack(children: [
        AnimatedPositioned(
          duration: duration,
          right: 0,
          left: 0,
          bottom: isFullSun ? -150 : 400,
          child: SvgPicture.asset(
            'assets/icons/moon.svg',
            color: Colors.yellow,
          ),
        ),
        AnimatedPositioned(
          duration: duration,
          right: 0,
          left: 0,
          bottom: isFullSun ? 400 : -150,
          child: SvgPicture.asset('assets/icons/Sun.svg'),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: -30,
          child: Image.asset(
            'assets/images/land_tree_light.png',
            height: 400,
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
                    indicator: const BoxDecoration(color: Colors.white),
                    tabs: const [
                      Tab(text: 'Kun'),
                      Tab(text: 'Tun'),
                    ],
                    labelStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.black,
                  ),
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
