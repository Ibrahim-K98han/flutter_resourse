import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LiveClass8_2_23 extends StatefulWidget {
  const LiveClass8_2_23({Key? key}) : super(key: key);

  @override
  State<LiveClass8_2_23> createState() => _LiveClass8_2_23State();
}

class _LiveClass8_2_23State extends State<LiveClass8_2_23> {
  int currentSelectedIndex = 0;
  List<Widget> widgets = [
    const Text('Dashboard'),
    const Text('Products'),
    const Text('Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom nav bar'),
        actions: [
          IconButton(onPressed: () async {
            // final selectedTime = await showTimePicker(
            //     context: context, initialTime: TimeOfDay.now());
            // print(selectedTime);
            // final seletedDate = await showDatePicker(context: context,
            //     initialDate: DateTime.now(),
            //     firstDate: DateTime(1990),
            //     lastDate: DateTime(2025));
            // print(seletedDate);
            final selectedDateRange = await showDateRangePicker(
                context: context, firstDate: DateTime(2000
            ), lastDate: DateTime(2040));
            print(selectedDateRange);
          }, icon: Icon(Icons.lock_clock))
        ],),
      body: Center(
        child: widgets[currentSelectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            letterSpacing: 0.8,
            color: Colors.pink
        ),
        onTap: (value) {
          currentSelectedIndex = value;
          setState(() {

          });
        },
        currentIndex: currentSelectedIndex,
        items: const[
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              //activeIcon: Icon(Icons.dangerous),
              icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Products'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
