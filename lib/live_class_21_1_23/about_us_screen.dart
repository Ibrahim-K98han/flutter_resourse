import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  String name;
  AboutUsPage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About us'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Text('About us page'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Home page')
            )
          ],
        ),
      ),
    );
  }
}
