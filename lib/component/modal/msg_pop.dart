import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagePopUp extends StatelessWidget {
  final String? title;
  final String? message;
  final Function()? okCallback;
  final Function()? cancelCallBack;
  MessagePopUp(
      {Key? key,
      required this.title,
      required this.message,
      required this.okCallback,
      this.cancelCallBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            color: Colors.white,
            width: Get.width * 0.7,
            child: Column(
              children: [
                Text(
                  title!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  message!,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton(onPressed: okCallback, child: Text('확인')),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: cancelCallBack,
                      child: Text('취소'),
                      style: ElevatedButton.styleFrom(primary: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
