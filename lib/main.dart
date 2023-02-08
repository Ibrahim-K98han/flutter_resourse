import 'package:flutter/material.dart';
import 'package:ostad_flutter/live_class_30_1_23/live_class.dart';
import 'package:ostad_flutter/support_class_29_01_23/support_class_29_1_23.dart';
import 'live_class_01_02_23/live_class_01_02_23.dart';
import 'live_class_25_1_23/live_class_25_1_23.dart';
import 'live_class_28_1_23/live_class_28_1_23.dart';
import 'live_class_4_2_23/live_class_4_2_23.dart';
import 'live_class_6_2_23/live_class_6_2_23.dart';
import 'live_class_6_2_23/todo_application.dart';
import 'live_class_8_2_23/live_class_8_2_23.dart';

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
      home: LiveClass8_2_23()
    );
  }
}
