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
        itemCount: 8,
        itemBuilder: (context, i){
          return Card(
            color: Colors.green,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              subtitle: Text("Profile Settings"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          );
        }
      )
    );
  }
}
