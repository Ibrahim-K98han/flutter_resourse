import 'package:flutter/material.dart';

class BottomNavigatorPage extends StatefulWidget {
  const BottomNavigatorPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorPage> createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
  MyAlertDialog(context) {
   return showDialog(
       context: context,
       builder: (BuildContext context){
         return Expanded(
           child: AlertDialog(
             title: Text('Alert'),
             content: Text('Do you want to delete'),
             actions: [
               TextButton(onPressed: (){}, child: Text('YES')),
               TextButton(onPressed: (){
                 Navigator.pop(context);
               }, child: Text('NO')),
             ],
           ),
         );
       }
   );
  }

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.all(25),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10))
    )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'Message'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
          ],
          onTap: (int index) {
            if (index == 0) {
              MySnackBar('Message', context);
            }
            if (index == 1) {
              MySnackBar('Person', context);
            }
            if (index == 2) {
              MySnackBar('Call', context);
            }
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    accountName: Text('Ibrahim Khan'),
                    accountEmail: Text('ibrahim@gmail.com'),
                    currentAccountPicture: Image.asset('images/person.png'),
                    onDetailsPressed: () {
                      MySnackBar('This is my Details', context);
                    },
                  )),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {
                  MySnackBar('Home', context);
                },
              ),
              ListTile(
                title: Text('About'),
                leading: Icon(Icons.account_balance_outlined),
                onTap: () {
                  MySnackBar('About', context);
                },
              ),
              ListTile(
                title: Text('Contact'),
                leading: Icon(Icons.contact_page_outlined),
                onTap: () {
                  MySnackBar('Contact', context);
                },
              ),
              ListTile(
                title: Text('Call'),
                leading: Icon(Icons.call),
                onTap: () {
                  MySnackBar('Call', context);
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),

                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.purpleAccent,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.orangeAccent,
                    )
                  ],
                ),
              ),

            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){
                  MyAlertDialog(context);
                }, child: Text('Text Button')),
                ElevatedButton(onPressed: (){
                  MySnackBar('Elevated Button', context);
                }, child: Text('Elevated Button'), style: buttonStyle,),
                OutlinedButton(onPressed: (){
                  MySnackBar('Outline Button', context);
                }, child: Text('Outline Button'))
              ],
            ),

          ],
        )
    );
  }
}
