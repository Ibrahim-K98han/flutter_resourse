import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ostad_flutter/foodui/category.dart';
import 'package:ostad_flutter/foodui/constant/colors.dart';
import 'package:ostad_flutter/foodui/favorite_screen.dart';
import 'package:ostad_flutter/foodui/food_ui.dart';
import 'package:ostad_flutter/foodui/profile_screen.dart';
import 'package:ostad_flutter/foodui/search_screen.dart';

class Navigationn extends StatefulWidget {
  const Navigationn({Key? key}) : super(key: key);

  @override
  State<Navigationn> createState() => _NavigationnState();
}

class _NavigationnState extends State<Navigationn> {
  int index = 0;
  List screen = [
    FoodUi(),
    CategoryPage(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            index = 2;
          });
        },
        child: Icon(Icons.search),
        backgroundColor: mainColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    index = 0;
                  });
                },
                  child: Icon(
                Icons.home,
                size: 30,
                    color: index == 0 ? mainColor : Colors.grey ,
              )),
              GestureDetector(
                  onTap: (){
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Icon(
                    Icons.category,
                    size: 30,
                    color: index == 1 ? mainColor : Colors.grey ,
                  )),
              SizedBox(width: 10,),
              GestureDetector(
                  onTap: (){
                    setState(() {
                      index = 3;
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    size: 30,
                    color: index == 3 ? mainColor : Colors.grey ,
                  ),),
              GestureDetector(
                  onTap: (){
                    setState(() {
                      index = 4;
                    });
                  },
                  child: Icon(
                    Icons.person,
                    size: 30,
                    color: index == 4 ? mainColor : Colors.grey ,
                  )),
            ],
          ),
        ),
      ),
      body: screen[index],
    );
  }
}
