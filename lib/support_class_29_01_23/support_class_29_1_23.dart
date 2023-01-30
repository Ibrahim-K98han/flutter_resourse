import 'package:flutter/material.dart';

class SupportClass29_1_23 extends StatefulWidget {
  const SupportClass29_1_23({Key? key}) : super(key: key);

  @override
  State<SupportClass29_1_23> createState() => _SupportClass29_1_23State();
}

class _SupportClass29_1_23State extends State<SupportClass29_1_23> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Text('$screenHeight $screenWidth'),
      ),
    );
  }
}
