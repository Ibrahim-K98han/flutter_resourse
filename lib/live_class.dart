import 'package:flutter/material.dart';

class LiveClass extends StatefulWidget {
  const LiveClass({Key? key}) : super(key: key);

  @override
  State<LiveClass> createState() => _LiveClassState();
}

class _LiveClassState extends State<LiveClass> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('My Name'),
            Image.asset('images/person.png',width: 150,height: 150,fit: BoxFit.cover,),
            Image.network(
                'https://images.template.net/wp-content/uploads/2016/04/27093503/Sky-Blue-Colored-Car-Wallpaper-for-Download.jpg'),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                controller: controller,
                // onChanged: (value){
                //   print(value);
                // },
                onTap: (){
                  print('someone tap filed');
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name'
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              print(controller.text);
              controller.text = 'Hello';
            }, child: Text('Get textfield'))
          ],
        ),
      ),
    );
  }
}
