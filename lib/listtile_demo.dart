import 'package:flutter/material.dart';


class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("List Tile"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 28,
        itemBuilder: (context, i){
            return Card(
              color: Colors.yellow,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                subtitle: Text("Phone Settings"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          }
      ),
    );
  }
}
