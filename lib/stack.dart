import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Stack"),
      ),
      body: Stack(children: [
        Image.asset("assets/images/download.jpg"),
        Padding(
          padding: const EdgeInsets.only(top: 550, left: 250),
          child: Text("First Page",style: TextStyle(fontSize: 30,color: Colors.white),),
        ),
        Icon(Icons.no_accounts,size: 30,)
      ],),
    );
  }
}
