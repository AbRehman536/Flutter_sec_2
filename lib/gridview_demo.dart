import 'package:flutter/material.dart';
class GridviewDemo extends StatelessWidget {
  const GridviewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8,
            crossAxisSpacing: 20.5,
            mainAxisSpacing: 19.5,
            mainAxisExtent: 80,
             ),
        itemCount: 13,
        itemBuilder: (BuildContext context, int index) {
            return Container(
                color: Colors.yellow,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Icon(Icons.notification_add),
                  Text("Notifications"),
                ],));
        },),

    );
  }
}
