import 'package:flutter/material.dart';
import 'package:flutter_sec_2/provider/user.dart';
import 'package:provider/provider.dart';

class ScreenZ extends StatelessWidget {
  const ScreenZ({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Z"),
        backgroundColor: Colors.orange,
      ),
      body: Center(child: Column(children: [
        Text(userProvider.getName()),
        Text(userProvider.getEmail()),
      ],),),
    );
  }
}
