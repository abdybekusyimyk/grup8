import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kit/conponents/appbarcardwidget.dart';
// import 'package:kit/conponents/bottomnavigeshbar.dart';
import 'package:kit/conponents/homegridviewwidget.dart';
import 'package:kit/constants/assets/assets.dart';
import 'package:kit/theme/custom/typography/apptext.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F5),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Appbarcardwidget(
              child:
                  SvgPicture.asset(SvgPictures.settings, fit: BoxFit.scaleDown),
            ),
            const CircleAvatar(backgroundColor: Colors.tealAccent, radius: 28),
            Appbarcardwidget(
              child: SvgPicture.asset(
                SvgPictures.notification,
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            // flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        const Text('Todal baiance'),
                        const SizedBox(height: 7),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '£ 23,970.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '30'),
                            ],
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        const Spacer(),
                        const Text('This month'),
                        const SizedBox(height: 7),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/Vector 1.svg',
                              // fit: BoxFit.scaleDown,
                              width: 20,
                            ),
                            const SizedBox(width: 15),
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '£ 5,235.',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(text: '25'),
                                ],
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/down.svg',
                              // fit: BoxFit.scaleDown,
                              width: 20,
                            ),
                            SizedBox(width: 15),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '£ 3,710.',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(text: '80'),
                                ],
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                    const SizedBox(width: 35),
                    Container(
                      width: 350,
                      height: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: const LinearGradient(
                            colors: [
                              Colors.teal,
                              // Colors.tealAccent,
                              // Colors.black87,
                              Colors.redAccent,
                              Colors.yellow
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.centerRight),
                      ),
                      child: Column(
                        children: [],
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 300,
                      height: 280,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.teal,
                              // Colors.tealAccent,
                              // Colors.black87,
                              Colors.redAccent,
                              Colors.yellow
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.centerRight),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // crossAxisSpacing: 4.0,
                  // mainAxisSpacing: 40.0,
                  childAspectRatio: 1.2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Homegridviewwidget(
                    text: AppText.homedetail[index],
                    child: SvgPicture.asset(SvgPictures.homefridviewicon[index],
                        // height: 6,
                        // width: 6,
                        fit: BoxFit.scaleDown),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
    // bottomNavigationBar: Bottomnavigeshbar());
  }
}
