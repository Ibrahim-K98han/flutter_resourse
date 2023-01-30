import 'package:flutter/material.dart';

class LiveClass30_01_23 extends StatelessWidget {
  const LiveClass30_01_23({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //appBar: AppBar(title: Text('Response Design'),),
        // body: Scrollbar(
        //   child: SingleChildScrollView(
        //     child: Column(
        //       children: [
        //         Text('Text'),
        //         SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             children: [
        //               Text('Row Data Row Data Row Data Row Data Row Data Row Data Row DataRow Data'),
        //               Text('Row Data Row Data Row Data Row Data Row Data Row Data Row DataRow Data'),
        //               Text('Row Data Row Data Row Data Row Data Row Data Row Data Row DataRow Data'),
        //               Text('Row Data Row Data Row Data Row Data Row Data Row Data Row DataRow Data'),
        //               Text('Row Data Row Data Row Data Row Data Row Data Row Data Row DataRow Data'),
        //             ],
        //           ),
        //         ),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //         Text('Text'),
        //       ],
        //     ),
        //   ),
        // ),
        // body: Container(
        //   height: 300,
        //   width: 500,
        //   color: Colors.grey,
        //   alignment: Alignment.center,
        //   child: AspectRatio(
        //     aspectRatio: 3/1,
        //     child: Container(
        //       color: Colors.pink,
        //     ),
        //   ),
        // ),
        appBar: AppBar(
          title: Text('Tab bar view'),
          bottom: TabBar(
            onTap: (value){
              print(value);
            },
            tabs: [
               Tab(
                 text: 'Person',
                //icon: Icon(Icons.person),
              ),
               Tab(
                 text: 'Settings',
                //icon: Icon(Icons.settings),
              ),
              Tab(
               child: Row(
                 children: [
                   Icon(Icons.contact_page),
                   Text('Contact')
                 ],
               ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: TabBarView(
                children: [
                  Center(
                    child: Text('Person'),
                  ),
                  Center(
                    child: Text('Settings'),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                       Container(
                         height: 100,
                         width: 100,
                         color: Colors.red,
                       )
                      ],
                    )
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
                child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.orange,
            ))
          ],
        ),
      ),
    );
  }
}
