import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:ostad_flutter/foodui/constant/colors.dart';
import 'package:ostad_flutter/foodui/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('images/icon.png'),
      title: Text('Flutter Skills', style: TextStyle(
        color: Colors.pink,
        fontFamily: 'ro',
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),
      ),
      backgroundColor: backround,
      showLoader: true,
      loaderColor: Colors.pink,
      navigator: LoginScreen(),
      durationInSeconds: 5,
    );
  }
}
