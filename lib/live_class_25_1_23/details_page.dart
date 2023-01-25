import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  String name;
   DetailsPage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Page'),),
      body: Column(
        children: [
          Text(name)
        ],
      ),
    );
  }
}
