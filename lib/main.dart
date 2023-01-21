import 'package:flutter/material.dart';
import 'package:ostad_flutter/bottom_navigator.dart';
import 'package:ostad_flutter/foodui/food_ui.dart';
import 'package:ostad_flutter/foodui/splash_screen.dart';
import 'package:ostad_flutter/live_class_18_1_23/live_class_18_1_23.dart';

import 'foodui/constant/navigator.dart';
import 'foodui/recip.dart';
import 'live_class.dart';
import 'live_class_21_1_23/live_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LiveClass21_01_23()
    );
  }
}
