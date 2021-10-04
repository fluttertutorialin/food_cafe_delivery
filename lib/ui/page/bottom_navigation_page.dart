import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import '../../controller/controller.dart';
import '../../resource/colors.dart';
import 'dispatch_page.dart';
import 'pick_up_page.dart';
import 'order_history_page.dart';
import 'profile_page.dart';

class BottomNavigationPage extends GetView<BottomNavigationController> {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => _renderBody(context);

  _renderBody(BuildContext context) {
    return Scaffold(
        body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller.pageController!,
            children: const [
              PickUpPage(),
              DispatchPage(),
              OrderHistoryPage(),
              ProfilePage()
            ]),
        bottomNavigationBar: _bottomNavigationBarWidget());
  }

  _bottomNavigationBarWidget() => Obx(() => WaterDropNavBar(
          bottomPadding: 5.0,
          backgroundColor: Colors.white,
          onItemSelected: (index) {
            controller.selectIndex(index);
          },
          waterDropColor: primarySwatchColor,
          iconSize: 25,
          inactiveIconColor: bottomBarIconInActive,
          selectedIndex: controller.selectedIndexGet!,
          barItems: [
            BarItem(filledIcon: LineIcons.home, outlinedIcon: LineIcons.home),
            BarItem(
                filledIcon: LineIcons.checkCircle,
                outlinedIcon: LineIcons.checkCircle),
            BarItem(
                filledIcon: LineIcons.recycle, outlinedIcon: LineIcons.recycle),
            BarItem(filledIcon: LineIcons.user, outlinedIcon: LineIcons.user)
          ]));
}
