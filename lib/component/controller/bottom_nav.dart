import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamslash/component/modal/msg_pop.dart';
import 'package:teamslash/pages/admin/new_team.dart';

enum PageName { HOMEPAGE, TEAMPAGE, NEWPAGE, NOTIPAGE, MYPAGE }

class BottomNavController extends GetxController {
  static BottomNavController get to => Get.find();
  GlobalKey<NavigatorState> searchPageKey = GlobalKey<NavigatorState>();
  RxInt pageIndex = 0.obs;
  List<int> bottomHistory = [0];

  void changeBottomIndex(int value, {bool hasGesture = true}) {
    var page = PageName.values[value];

    switch (page) {
      case PageName.NEWPAGE:
        Get.to(() => const NewTeamPage());
        break;
      case PageName.HOMEPAGE:
      case PageName.TEAMPAGE:
      case PageName.NOTIPAGE:
      case PageName.MYPAGE:
        _changePage(value, hasGesture: hasGesture);
        break;
    }
  }

  void _changePage(int value, {bool hasGesture = true}) {
    pageIndex(value);
    if (!hasGesture) return;
    if (bottomHistory.last != value) {
      bottomHistory.add(value);
    }
  }

  Future<bool> willPopAction() async {
    if (bottomHistory.length == 1) {
      showDialog(
          context: Get.context!,
          builder: (context) => MessagePopUp(
                title: '시스템',
                message: '종료하시겠습니까?',
                okCallback: () {
                  exit(0);
                },
                cancelCallBack: Get.back,
              ));
      print('exit!');
      return true;
    } else {
      var index = bottomHistory.last;
      changeBottomIndex(index, hasGesture: false);
      bottomHistory.removeLast();
      return false;
    }
  }
}
