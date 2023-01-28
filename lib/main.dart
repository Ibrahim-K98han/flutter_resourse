import 'package:flutter/material.dart';
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
      home: LiveClass_28_01_23()
    );
  }
}
