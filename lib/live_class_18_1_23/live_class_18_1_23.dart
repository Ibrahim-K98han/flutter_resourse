import 'package:flutter/material.dart';

class LiveClass_18_1_23 extends StatefulWidget {
  const LiveClass_18_1_23({Key? key}) : super(key: key);

  @override
  State<LiveClass_18_1_23> createState() => _LiveClass_18_1_23State();
}

class _LiveClass_18_1_23State extends State<LiveClass_18_1_23> {
  GlobalKey _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('live class 18 - 01 -2023'),
      ),
      drawer: Drawer(
        elevation: 8,
        backgroundColor: Colors.pinkAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30)
          )
        ),
        child: SafeArea(
          child: Column(
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Click')),
              Text('Ibrahim Khan'),
              ListTile(
                tileColor: Colors.blue,
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                onTap: (){
                  print('tap');
                },
                onLongPress: (){
                  print('Long');
                },
                leading: Icon(Icons.home),
                title: Text('Home'),
                subtitle: Text('go to home quick'),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                tileColor: Colors.red,
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                onTap: (){
                  print('tap');
                },
                onLongPress: (){
                  print('Long');
                },
                leading: Icon(Icons.home),
                title: Text('Home'),
                subtitle: Text('go to home quick'),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                tileColor: Colors.blue,
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                onTap: (){
                  print('tap');
                },
                onLongPress: (){
                  print('Long');
                },
                leading: Icon(Icons.home),
                title: Text('Home'),
                subtitle: Text('go to home quick'),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Card(
              elevation: 5,
              color: Colors.blue,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                // side: BorderSide.lerp(BorderSide(
                //   color: Colors.white
                // ),
                //     BorderSide(
                //   color: Colors.red
                // ),0.1)
              ),
              margin: EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text('Ostad Batch 02'),
              ),
            ),
            Row(
              children: [
                Radio(value: 'Male', groupValue: 'gender', onChanged: (value) {}),
                Text('Male'),
                Radio(
                    value: 'Female', groupValue: 'gender', onChanged: (value) {}),
                Text('Female')
              ],
            ),
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text('HTML'),
                Checkbox(value: false, onChanged: (value) {}),
                Text('CSS'),
                Checkbox(value: true, onChanged: (value) {}),
                Text('iOS')
              ],
            ),
            Row(
              children: [
                Text('Dark Mode'),
                Switch(value: false, onChanged: (value) {})
              ],
            ),
            ListTile(
              title: Text('My Name'),
              subtitle: Text('Ibrahim Khan'),
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autovalidateMode: AutovalidateMode.always,
                      validator:(String? value){
                        if(value!.isEmpty){
                          return 'Enter your email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      autovalidateMode: AutovalidateMode.always,
                      validator:(String? value){
                        if(value!.isEmpty){
                          return 'Enter your Password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                      ),
                    ),
                  ],
                )
              ),
            ),
            ElevatedButton(onPressed: (){
              // if(_formKey.currentState!.validator)
            }, child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
