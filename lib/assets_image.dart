import 'package:flutter/material.dart';
class AssetsImageDemo extends StatelessWidget {
  const AssetsImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.asset("assets/images/download.jpg"),
      ],),
    );
  }
}
