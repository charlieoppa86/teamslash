import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:teamslash/component/utils/photo_upload.dart';
import 'package:teamslash/theme/style.dart';

class NewTeamPage extends StatefulWidget {
  const NewTeamPage({super.key});

  @override
  State<NewTeamPage> createState() => _NewTeamPageState();
}

class _NewTeamPageState extends State<NewTeamPage> {
  Widget _studyThumbnail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '대표 이미지',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            Get.to(() => PhotoUploadPage());
          },
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: darkGreyClr.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)),
            child: Center(child: Icon(CupertinoIcons.camera)),
          ),
        ),
      ],
    );
  }

  Widget _studyName() {
    return Container(
      child: Text('스터디 이름'),
    );
  }

  Widget _studyMinDesc() {
    return Container(
      child: Text('스터디 요약'),
    );
  }

  Widget _studyCategory() {
    return Container(
      child: Text('스터디 카테고리'),
    );
  }

  Widget _studyFormat() {
    return Container(
      child: Text('스터디 형태'),
    );
  }

  Widget _studyLocation() {
    return Container(
      child: Text('스터디 위치'),
    );
  }

  Widget _studyPrice() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '스터디 비용',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          maxLength: 10,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              hintText: '1회당 비용을 입력해 주세요',
              counterText: '',
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: darkGreyClr))),
        ),
      ],
    );
  }

  Widget _studyMaxDesc() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '스터디 상세 정보',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          minLines: 10,
          maxLines: 20,
          maxLength: 500,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
              hintText: '스터디를 자유롭게 소개해보세요',
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: darkGreyClr))),
        ),
      ],
    );
  }

  Widget _leaderName() {
    return Container(
      child: Text('리더 이름'),
    );
  }

  Widget _leaderInfo() {
    return Container(
      child: Text('리더 정보'),
    );
  }

  Widget _leaderThumbnail() {
    return Container(
      child: Text('리더 프로필'),
    );
  }

  Widget _studyInquiry() {
    return Container(
      child: Text('스터디 문의'),
    );
  }

  Widget _studyApplication() {
    return Container(
      child: Text('스터디 신청'),
    );
  }

  final formKey = GlobalKey<FormState>();
  final textController1 = TextEditingController(text: '');
  final textController2 = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              '새 스터디',
              style:
                  TextStyle(color: darkHeaderClr, fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            leading: IconButton(
              color: darkHeaderClr,
              icon: Icon(CupertinoIcons.back),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _studyThumbnail(),
                    _studyName(),
                    _studyMinDesc(),
                    _studyCategory(),
                    _studyFormat(),
                    _studyLocation(),
                    _studyPrice(),
                    _studyMaxDesc(),
                    _leaderName(),
                    _leaderInfo(),
                    _leaderThumbnail(),
                    _studyInquiry(),
                    _studyApplication(),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: bluishClr),
                          onPressed: () {},
                          child: Text(
                            '스터디 등록',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            '스터디 삭제',
                            style: TextStyle(color: Colors.red),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
