import 'package:flutter/material.dart';
import 'package:ostad_flutter/foodui/constant/colors.dart';

import 'constant/navigator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backround,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
            ),
            Center(
              child: Text(
                'Login',
                style: TextStyle(
                    color: font,
                    fontFamily: 'ro',
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'Email',
                      hintStyle: TextStyle(fontFamily: 'ro'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'Password',
                      hintStyle: TextStyle(fontFamily: 'ro'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context)=>Navigationn()))
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ro',
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                )
            ),
            SizedBox(height: 170,),
            Expanded(
              child: GestureDetector(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(1, 1),
                        blurRadius: 20,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(120),
                        topRight: Radius.circular(120)
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontFamily: 'ro',
                          color: font,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                      barrierColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context){
                        return DraggableScrollableSheet(
                          initialChildSize: 0.77,
                          builder: (context, scrollController){
                            return Container(
                              decoration: BoxDecoration(
                                color: backround,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(120),
                                  topLeft: Radius.circular(120)
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 50,),
                                  Text(
                                      'Sign up',
                                    style: TextStyle(
                                      fontFamily: 'ro',
                                      color: font,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 40,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 30),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            icon: Icon(Icons.email),
                                            hintText: 'Email',
                                            hintStyle: TextStyle(fontFamily: 'ro'),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(15),
                                                borderSide: BorderSide.none
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 30),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: TextField(
                                        obscureText: true,
                                        obscuringCharacter: '*',
                                        decoration: InputDecoration(
                                            icon: Icon(Icons.lock),
                                            hintText: 'Password',
                                            hintStyle: TextStyle(fontFamily: 'ro'),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(15),
                                                borderSide: BorderSide.none
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 30),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            icon: Icon(Icons.person),
                                            hintText: 'User Name',
                                            hintStyle: TextStyle(fontFamily: 'ro'),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(15),
                                                borderSide: BorderSide.none
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30,),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(builder: ((context)=>Navigationn()))
                                        );
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 50,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: mainColor,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'ro',
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold
                                          ),),
                                      )
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
