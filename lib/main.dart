import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teamslash/component/utils/init.dart';
import 'package:teamslash/pages/app.dart';
import 'package:teamslash/theme/style.dart' as style;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
      initialBinding: InitBinding(),
      theme: style.theme,
      debugShowCheckedModeBanner: false,
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return App();
  }
}
