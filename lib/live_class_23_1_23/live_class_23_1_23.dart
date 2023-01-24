import 'package:flutter/material.dart';

class LiveClass23_01_23 extends StatelessWidget {
  const LiveClass23_01_23({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        // child: Container(
        //   width: 100,
        //   height: 100,
        //   child: CircularProgressIndicator(
        //     strokeWidth: 15,
        //     color: Colors.red,
        //     backgroundColor: Colors.grey,
        //     value: 0.2,
        //     valueColor:AlwaysStoppedAnimation(Colors.orangeAccent),
        //   ),
        // ),


        // child: SizedBox(
        //   width: 300,
        //   //height: 80,
        //   child: LinearProgressIndicator(
        //     minHeight: 10,
        //     value: 0.7,
        //     color: Colors.pink,
        //     backgroundColor: Colors.pink.shade50,
        //   ),
        // ),

        // child: CircleAvatar(
        //   backgroundColor: Colors.red,
        //   backgroundImage: AssetImage('images/star.png'),
        //   radius: 50,
        //   child: Icon(Icons.icecream, size: 50,),
        // ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            tileColor: Colors.red,
            textColor: Colors.white,
            leading: CircleAvatar(
              child: Text('49'),
            ),
            title: Text('Ibrahim Khan'),
            subtitle: Text('Flutter Developer'),
            trailing: Icon(Icons.person),
          ),
        ),
      ),
    );
  }
}
