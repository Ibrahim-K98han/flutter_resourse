import 'package:flutter/material.dart';
import 'package:ostad_flutter/live_class_21_1_23/about_us_screen.dart';
import 'package:ostad_flutter/live_class_21_1_23/contact_us_page.dart';

class LiveClass21_01_23 extends StatelessWidget {
  const LiveClass21_01_23({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Screen'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUsPage(name: 'Ibrahim',)));
                },
                child: Text('Go to about use screen')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactUsPage()));
                },
                child: Text('Contact Us page'))
          ],
        ),
      ),
    );
  }
}
