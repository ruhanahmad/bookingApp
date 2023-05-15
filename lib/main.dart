import 'package:booking/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter OTP Verification',
      debugShowCheckedModeBanner: false,
      home: 
      Welcome(),
      // HomeScreens()
    );
  }
}
