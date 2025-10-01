import 'package:flutter/material.dart';
import 'package:flutter_sec_2/gridview_demo.dart';
import 'package:flutter_sec_2/login_form.dart';
import 'package:flutter_sec_2/multiple_selection.dart';

import 'listtile_demo.dart';

class BottomBarDemo extends StatefulWidget {
  const BottomBarDemo({super.key});

  @override
  State<BottomBarDemo> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {
  int selectedIndex = 2;
  List<Widget> screenList = [MultipleSelectionDemo(), ListTileDemo(),GridviewDemo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          unselectedItemColor: Colors.red,
          selectedItemColor: Colors.white,
          showUnselectedLabels: false,
          onTap: (val){
            setState(() {
              selectedIndex = val;
            });
          },
            currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          ]),
    );
  }
}
