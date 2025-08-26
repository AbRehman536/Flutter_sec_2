import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column"),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Name", style: TextStyle(fontSize: 20),),
              Text("Age", style: TextStyle(fontSize: 20),),
              Text("Contact", style: TextStyle(fontSize: 20),),
              Text("City", style: TextStyle(fontSize: 20),),
              Text("Class", style: TextStyle(fontSize: 20),),
            ],),
        ),
      ),
    );
  }
}
