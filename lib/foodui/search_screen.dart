import 'package:flutter/material.dart';
import 'package:ostad_flutter/foodui/constant/app_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
    );
  }
}
