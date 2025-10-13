import 'package:flutter/material.dart';
import 'package:flutter_sec_2/screen_b.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Screen A"),
      ),
      body: Center(child: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context)=> ScreenB(
              name : 'Ahmed',
              email : 'ahmed@gmail.com',
            )));
      }, child: Text("Show Screen B")),),
    );
  }
}
