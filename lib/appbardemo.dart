import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back, color: Colors.white,size: 30,),
        title: Text("App Bar Demo", style:
        TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notification_add, color: Colors.white,size: 30,),
          Icon(Icons.bookmark, color: Colors.white,size: 30,),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){},child: Icon(Icons.notification_add,color: Colors.white,),),
    );
  }
}

