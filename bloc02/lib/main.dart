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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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

  Future<void> changeMode(int value) async {
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
      await Future.delayed(const Duration(milliseconds: 400));
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

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      duration: duration,
      curve: Curves.easeInOut,
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: isFullSun ? lightBgColors : darkBgColors,
        ),
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            left: 0,
            right: 0,
            bottom: isFullSun ? 400 : -150,
            duration: duration,
            child: SvgPicture.asset('assets/icons/Sun.svg'),
          ),
          Positioned(
            bottom: -30,
            left: 0,
            right: 0,
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
                  decoration: const BoxDecoration(
                    color: Colors.white24,
                  ),
                  child: DefaultTabController(
                    length: 2,
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: Colors.transparent,
                      indicator: const BoxDecoration(
                        color: Colors.white,
                      ),
                      onTap: ((value) async {
                        await changeMode(value);
                      }),
                      labelStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelColor: Colors.white,
                      labelColor: Colors.black,
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
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
