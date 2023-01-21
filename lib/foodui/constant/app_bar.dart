import 'package:flutter/material.dart';

import 'colors.dart';

appbar(){
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    title: Icon(
        Icons.menu,
        size:27
    ),
    actions: [
      CircleAvatar(
        radius: 18,
        backgroundImage: AssetImage('images/person.png'),
      ),
    ],
    backgroundColor: mainColor,
  );
}