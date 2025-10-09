import 'package:flutter/material.dart';

class PopupMenuDemo extends StatelessWidget {
  const PopupMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("PopUp Menu"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: PopupMenuButton(
              onSelected: (value){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Selected item $value")));
              },
              itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                    value: "Profile",
                    child: Text("Profile")),
                PopupMenuItem(
                    value: "Settings",
                    child: Text("Settings")),
                PopupMenuItem(
                    value: "Notifications",
                    child: Text("Notifications")),
                PopupMenuItem(
                    value: "Logout",
                    child: Text("Logout")),
              ];
            },),
          )
        ],
      ),
      body: Center(child: Text("Tap on 3 dots to open popup menu"),),
    );
  }
}
