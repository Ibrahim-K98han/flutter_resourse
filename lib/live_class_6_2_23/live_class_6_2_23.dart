import 'package:flutter/material.dart';

class LiveClass_6_2_23 extends StatefulWidget {
  const LiveClass_6_2_23({Key? key}) : super(key: key);

  @override
  State<LiveClass_6_2_23> createState() => _LiveClass_6_2_23State();
}

class _LiveClass_6_2_23State extends State<LiveClass_6_2_23> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              count++;
              setState(() {

              });
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              count--;
              setState(() {

              });
            },
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
      body: Center(
        child: Text(
          count.toString(),
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
