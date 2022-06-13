import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:teamslash/theme/style.dart';

class MyPage extends StatefulWidget {
  MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
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
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Text(
                  '내 정보',
                  style: TextStyle(
                      fontSize: 26,
                      letterSpacing: -2,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.person,
                    color: darkHeaderClr,
                    size: 28,
                  ),
                  Container(
                    width: 12,
                  ),
                  Text(
                    '계정 관리',
                    style: TextStyle(
                      color: darkHeaderClr,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 1,
                decoration: BoxDecoration(color: textClr.withOpacity(0.1)),
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.question_circle,
                    color: darkHeaderClr,
                    size: 28,
                  ),
                  Container(
                    width: 12,
                  ),
                  Text(
                    '서비스 이용 안내',
                    style: TextStyle(
                      color: darkHeaderClr,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 1,
                decoration: BoxDecoration(color: textClr.withOpacity(0.1)),
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.phone_circle,
                    color: darkHeaderClr,
                    size: 28,
                  ),
                  Container(
                    width: 12,
                  ),
                  Text(
                    '고객센터',
                    style: TextStyle(
                      color: darkHeaderClr,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 1,
                decoration: BoxDecoration(color: textClr.withOpacity(0.1)),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                              title: Text('정말 로그아웃 하시겠습니까?'),
                              actions: [
                                CupertinoDialogAction(
                                  child: Text('예'),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                CupertinoDialogAction(
                                  child: Text(
                                    '아니오',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                )
                              ],
                            ));
                  },
                  child: Text('로그아웃',
                      style: TextStyle(fontSize: 15, color: Colors.red)),
                ),
              ),
            ],
          ),
        ));
  }
}
