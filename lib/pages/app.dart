import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamslash/component/controller/bottom_nav.dart';
import 'package:teamslash/pages/main/home_page.dart';
import 'package:teamslash/pages/main/my_page.dart';
import 'package:teamslash/pages/main/noti_page.dart';
import 'package:teamslash/pages/main/team_page.dart';
import 'package:teamslash/theme/style.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Obx(
          () => Scaffold(
            extendBody: true,
            body: IndexedStack(
              index: controller.pageIndex.value,
              children: [
                HomePage(),
                TeamPage(),
                Container(),
                NotiPage(),
                MyPage()
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
                onTap: controller.changeBottomIndex,
                currentIndex: controller.pageIndex.value,
                type: BottomNavigationBarType.fixed,
                selectedFontSize: 13,
                unselectedFontSize: 13,
                selectedItemColor: bluishClr,
                unselectedItemColor: darkGreyClr.withOpacity(0.3),
                showSelectedLabels: true,
                showUnselectedLabels: true,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.square_grid_2x2),
                      activeIcon: Icon(CupertinoIcons.square_grid_2x2_fill),
                      label: '스터디'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.rectangle_stack),
                      activeIcon: Icon(CupertinoIcons.rectangle_stack_fill),
                      label: '보관함'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.plus_square), label: '새 스터디'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.bell),
                      activeIcon: Icon(CupertinoIcons.bell_fill),
                      label: '알림'),
                  BottomNavigationBarItem(
                    label: '내 정보',
                    icon: Icon(CupertinoIcons.person_circle),
                    activeIcon: Icon(CupertinoIcons.person_circle_fill),
                  )
                ]),
          ),
        ),
        onWillPop: controller.willPopAction);
  }
}
