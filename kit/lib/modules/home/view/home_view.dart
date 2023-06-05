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
                icon: Icons.settings_outlined,
              ),
              const CircleAvatar(
                  backgroundColor: Colors.tealAccent, radius: 28),
              Appbarcardwidget(
                icon: Icons.notifications,
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            const Expanded(
              // flex: 2,
              child: Row(
                children: [
                  SizedBox(
                    width: 300,
                    height: 300,
                    child: Card(
                      color: Colors.tealAccent,
                    ),
                  )
                ],
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
                      child:
                          SvgPicture.asset(SvgPictures.homefridviewicon[index],
                              // height: 6,
                              // width: 6,
                              fit: BoxFit.scaleDown),
                      text: AppText.homedetail[index],
                    );
                  },
                ),
              ),
            )
          ],
        ));
    // bottomNavigationBar: Bottomnavigeshbar());
  }
}
