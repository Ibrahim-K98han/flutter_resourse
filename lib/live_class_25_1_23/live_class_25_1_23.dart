import 'package:flutter/material.dart';

import '../live_class_21_1_23/about_us_screen.dart';
import 'details_page.dart';

class LiveClass25_01_23 extends StatelessWidget {
  LiveClass25_01_23({Key? key}) : super(key: key);

  List<String> studentName = ['Rahim', 'Karim'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body:
            /*Scrollbar(
        thickness: 10,
        radius: Radius.circular(10),
        thumbVisibility: true,
        child: ListView.separated(
          //scrollDirection: Axis.horizontal,
          //reverse: true,
          itemCount: 100,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Text('Ibrahim Khan ${index + 1}'),
                Icon(Icons.person)
              ],
            );
          },
          separatorBuilder: (context, index){
            return Divider(
              thickness: 2,
              height: 30,
              color: Colors.orangeAccent,
            );
          },
        ),
      ),*/
            /* GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        children: [
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
        ],
      )*/

            ListView.builder(
          itemCount: studentName.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailsPage(name: studentName[index],)));
                  },
                  child: Text(studentName[index])),
            );
          },
        ));
  }
}
