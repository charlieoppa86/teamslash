import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:teamslash/database/alert_map.dart';
import 'package:teamslash/theme/style.dart';

class NotiPage extends StatefulWidget {
  NotiPage({Key? key}) : super(key: key);

  @override
  State<NotiPage> createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage> {
  late bool _isLoading;

  @override
  void initState() {
    _isLoading = false;
    Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isLoading = false;
    });
    super.initState();
  }

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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '알림',
                  style: TextStyle(
                      fontSize: 26,
                      letterSpacing: -2,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: () {}, child: Text('모두 읽음'))
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: ((BuildContext _context, int index) {
                  return Container(
                    height: 100,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(alert[index]["topic"]!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -1,
                                    color: darkHeaderClr,
                                  )),
                              Text(alert[index]["desc"]!),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(alert[index]["time"]!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: -1,
                                    color: darkHeaderClr.withOpacity(0.6),
                                  )),
                            ],
                          ),
                        ]),
                  );
                }),
                separatorBuilder: (BuildContext _context, int index) {
                  return Container(
                    height: 1,
                    color: darkHeaderClr.withOpacity(0.1),
                  );
                },
                itemCount: alert.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
