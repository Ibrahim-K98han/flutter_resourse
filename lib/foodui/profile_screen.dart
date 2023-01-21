import 'package:flutter/material.dart';
import 'package:ostad_flutter/foodui/constant/app_bar.dart';
import 'package:ostad_flutter/foodui/constant/colors.dart';

class ProfileScreen extends StatelessWidget {

  List<Icon> icons = [
    Icon(Icons.person, color: mainColor,),
    Icon(Icons.settings, color: mainColor,),
    Icon(Icons.note_add, color: mainColor,),
    Icon(Icons.favorite, color: mainColor,),
    Icon(Icons.chat, color: mainColor,),
    Icon(Icons.login, color: mainColor,),
  ];
  List titls = [
    'Personal data',
    'Settings',
    'E-Statement',
    'Refferal Code',
    'FAQs',
    'Logout'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backround,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: mainColor, width: 2),
                    shape: BoxShape.circle
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/p3.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text(
              'Charlotte',
              style: TextStyle(
                fontSize: 18,
                color: font,
                fontFamily: 'ro'
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                height: 40,
                thickness: 2,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                  leading: Container(
                    width: 37,
                    height: 37,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: icons[index],
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(titls[index]),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_sharp,size: 15,),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
