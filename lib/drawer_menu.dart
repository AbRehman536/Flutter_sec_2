import 'package:flutter/material.dart';
import 'package:flutter_sec_2/listtile_demo.dart';

class DrawerMenuDemo extends StatelessWidget {
  const DrawerMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Menu"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 100,
                color: Colors.orange,
                child: Center(child: DrawerHeader(child: Text("My App")))),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ListTileDemo()));
              },
              leading: Icon(Icons.person),
              title: Text("Profile"),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ListTileDemo()));
              },
              leading: Icon(Icons.search),
              title: Text("Search"),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ListTileDemo()));
              },
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ListTileDemo()));
              },
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
