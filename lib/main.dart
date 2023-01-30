import 'package:flutter/material.dart';
import 'package:ostad_flutter/live_class_30_1_23/live_class.dart';
import 'package:ostad_flutter/support_class_29_01_23/support_class_29_1_23.dart';
import 'live_class_25_1_23/live_class_25_1_23.dart';
import 'live_class_28_1_23/live_class_28_1_23.dart';

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
      home: LiveClass30_01_23()
    );
  }
}
