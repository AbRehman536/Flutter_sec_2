import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.arrow_back_ios),
          title: Text("App Bar"),
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.green,
            labelColor: Colors.white,
            indicatorColor: Colors.black,
            tabs: [
            Tab(icon: Icon(Icons.home), text: 'Home',),
            Tab(icon: Icon(Icons.settings), text: 'Settings',),
            Tab(icon: Icon(Icons.person), text: 'Profile',),
              Tab(icon: Icon(Icons.home), text: 'Home',),
              Tab(icon: Icon(Icons.settings), text: 'Settings',),
              Tab(icon: Icon(Icons.person), text: 'Profile',),
              Tab(icon: Icon(Icons.home), text: 'Home',),
              Tab(icon: Icon(Icons.settings), text: 'Settings',),
              Tab(icon: Icon(Icons.person), text: 'Profile',),
          ],),
          actions: [
            Icon(Icons.notifications),
            Icon(Icons.settings),
          ],
        ),
        body: TabBarView(children: [
          Center(child: Column(children: [
            Text("home"),
            Icon(Icons.home),
            Image.asset("assets/images/download.jpg",height: 400,),
          ],)),
          Center(child: Text("Settings"),),
          Center(child: Text("Profile"),),
        ]),
      ),
    );
  }
}
