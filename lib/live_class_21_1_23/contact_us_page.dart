import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact us'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contact us page'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'Tom');
                },
                child: Text('Back to home page')
            )
          ],
        ),
      ),
    );
  }
}
