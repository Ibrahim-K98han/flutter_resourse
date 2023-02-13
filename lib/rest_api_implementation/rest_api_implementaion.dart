import 'package:flutter/material.dart';

class RestApiImplementation extends StatefulWidget {
  const RestApiImplementation({Key? key}) : super(key: key);

  @override
  State<RestApiImplementation> createState() => _RestApiImplementationState();
}

class _RestApiImplementationState extends State<RestApiImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'),),
    );
  }
}
