import 'package:flutter/material.dart';

class FABView extends StatelessWidget {
  const FABView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 30,),
        title: Text("App Bar Demo",style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 30,
          color: Colors.white,
        ),),
        actions: [
          Icon(Icons.notification_add,color: Colors.white,size: 30,),
          Icon(Icons.bookmark,color: Colors.white,size: 30,),
        ],
      ),
     floatingActionButton: FloatingActionButton.extended(
       backgroundColor: Colors.green,
       label: Text("Notification"),
       icon: Icon(Icons.notification_add),
       onPressed: (){},),
    );
  }
}
