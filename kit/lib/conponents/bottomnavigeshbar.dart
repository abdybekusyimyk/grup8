import 'package:flutter/material.dart';
import 'package:kit/modules/chat/view/chat_view.dart';
import 'package:kit/modules/history/view/history_view.dart';
import 'package:kit/modules/home/view/home_view.dart';

//       body: Center(
//         child: _bodyView.elementAt(_selectedIndex),

class Bottomnavigeshbar extends StatefulWidget {
  const Bottomnavigeshbar({Key? key}) : super(key: key);

  @override
  State<Bottomnavigeshbar> createState() => _BottomnavigeshbarState();
}

class _BottomnavigeshbarState extends State<Bottomnavigeshbar>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  static const List<Widget> bodyView = <Widget>[
    HomeView(),
    HistoryView(),
    ChatView()
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  Widget _tabItem(Widget child, {bool isSelected = false}) {
    return AnimatedContainer(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      duration: const Duration(seconds: 2),
      decoration: !isSelected
          ? null
          : BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(colors: [
                Color(0xffC8D61B),
                Color(0xff32D74B),
              ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
            ),
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          child,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> icons = const [
      Icon(Icons.home_outlined),
      Icon(Icons.explore_outlined),
      Icon(Icons.camera_alt_outlined)
    ];
    return Scaffold(
        body: bodyView.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 80,
          width: double.infinity,
          // padding: const EdgeInsets.all(12),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Container(
              color: Colors.white,
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  onTap: (x) {
                    setState(() {
                      _selectedIndex = x;
                    });
                  },
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black87,
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide.none,
                  ),
                  tabs: [
                    for (int i = 0; i < icons.length; i++)
                      _tabItem(
                        icons[i],
                        isSelected: i == _selectedIndex,
                      ),
                  ],
                  controller: _tabController),
            ),
          ),
        ));
  }
}
