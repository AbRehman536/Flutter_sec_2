import 'package:flutter/material.dart';
import 'package:flutter_sec_2/listtile_demo.dart';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});

  @override
  State<BottomSheetDemo> createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Center(child: 
        ElevatedButton(onPressed: (){
          showModalBottomSheet(
              context: context, builder: (BuildContext context) {
                return Column(children: [
                  ListTile(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.search),
                    title: Text("Search"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ListTileDemo()));
                    },
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ElevatedButton(onPressed: (){
                    
                      Navigator.pop(context);

                  }, child: Text("Back")),
                ],);
          });
        }, child: Text("Show Bottom Sheet")),
      ),
    );
  }
}
