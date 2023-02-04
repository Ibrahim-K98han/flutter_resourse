import 'package:flutter/material.dart';

class LiveClass_4_2_23 extends StatefulWidget {
  const LiveClass_4_2_23({Key? key}) : super(key: key);

  @override
  State<LiveClass_4_2_23> createState() => _LiveClass_4_2_23State();
}

class _LiveClass_4_2_23State extends State<LiveClass_4_2_23> {
  String text = 'Hello';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateless widget'),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          text = 'Hi';
          print(text);
        },
      ),
    );
  }
}
