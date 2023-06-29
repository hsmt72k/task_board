import 'package:flutter/material.dart';

import 'package:remixicon/remixicon.dart';

import '../config/style.dart';
import 'adder_page.dart';
import '../ui/empty_app_bar.dart';
import 'home_page.dart';
import '../ui/motion_tab/motion_tab_bar.dart';

class MyDashBoard extends StatefulWidget {
  const MyDashBoard({Key? key}) : super(key: key);

  @override
  State<MyDashBoard> createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard>
    with TickerProviderStateMixin {
  final _inactiveColor = Colors.grey;
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: EmptyAppBar(),
      body:
      SafeArea(child: getBody()),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: _buildFloatingActionButton(),
      bottomNavigationBar:
          Container(color: Colors.transparent, child: _buildBottomBar()),
    );
  }

  Widget _buildBottomBar() {
    return MotionTabBar(
      padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
      initialSelectedTab: "Home",
      useSafeArea: true,
      labels: const ["Home", "Category"],
      icons: const [
        Remix.bank_line,
        Remix.collage_line
      ],
      tabSize: 50,
      tabBarHeight: 55,
      textStyle: kPoppinsThin.copyWith(
        fontSize: 12,
      ),
      tabIconColor: Colors.grey[400],
      tabIconSize: 28.0,
      tabIconSelectedSize: 26.0,
      tabSelectedColor: Colors.deepPurple[900],
      tabIconSelectedColor: Colors.white,
      tabBarColor: Colors.white,
      onTabItemSelected: (int value) {
        setState(() {
          _tabController!.index = value;
        });
      },
    );
  }

  Widget getBody() {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: const <Widget>[
        HomePage(),
        AdderPage(),
      ],
    );
  }

  Widget _buildFloatingActionButton() {
    return SizedBox(
      width: 48,
      height: 48,
      child: FittedBox(
        child: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurple[900],
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
