import 'package:flutter/material.dart';
import 'package:flutter_sec_2/provider/screen_z.dart';
import 'package:flutter_sec_2/provider/user.dart';
import 'package:provider/provider.dart';

class ScreenADemo extends StatelessWidget {
  const ScreenADemo({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return
      Scaffold(
        appBar: AppBar(
          title: Text("Screen A"),
          backgroundColor: Colors.yellow,
        ),
        body: Center(child:
          ElevatedButton(onPressed: (){
            userProvider.setName("Abdullah");
            userProvider.setEmail("abdullah@gmail.com");
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenZ()));
          }, child: Text("Show Screen Z")),),
      );
  }
}
