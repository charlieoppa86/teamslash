import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamslash/pages/admin/new_team.dart';
import 'package:teamslash/theme/style.dart';

class TeamPage extends StatefulWidget {
  const TeamPage({super.key});

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: darkGreyClr),
        centerTitle: false,
        title: Image.asset(
          'assets/logo.png',
          fit: BoxFit.cover,
          height: 45,
        ),
        actions: [],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 15),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '클래스룸',
                    style: TextStyle(
                        fontSize: 26,
                        letterSpacing: -2,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => NewTeamPage());
                    },
                    child: Container(
                      width: 110,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: bluishClr),
                      child: Center(
                        child: Text(
                          '새 스터디',
                          style: TextStyle(
                              color: bgClr,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('즐겨찾기',
                          style: TextStyle(
                              fontSize: 20,
                              letterSpacing: -2,
                              fontWeight: FontWeight.bold)),
                      Text('스터디 관리',
                          style: TextStyle(
                              fontSize: 20,
                              letterSpacing: -2,
                              fontWeight: FontWeight.bold)),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
