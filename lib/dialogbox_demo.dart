import 'package:flutter/material.dart';
import 'package:flutter_sec_2/listtile_demo.dart';

class DialogBoxDemo extends StatefulWidget {
  const DialogBoxDemo({super.key});

  @override
  State<DialogBoxDemo> createState() => _DialogBoxDemoState();
}

class _DialogBoxDemoState extends State<DialogBoxDemo> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          leading: Icon(Icons.arrow_back_ios),
          title: Text("Login"),
          actions: [
            Icon(Icons.person),
          ]
      ),
      body: Column(children: [
        SizedBox(height: 20,),
        Text("LOGIN",style: TextStyle(fontSize: 30),),
        SizedBox(height: 20,),
        TextField(
          controller: emailController,
          decoration: InputDecoration(
              label: Text("Email"),
              hintText: 'abdullah@gmail.com',
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.account_balance),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(width: 2),
              )

          ),
        ),
        SizedBox(height: 20,),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(
              label: Text("Password"),
              hintText: '123456789',
              prefix: Icon(Icons.lock),
              suffix: Icon(Icons.visibility),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(width: 2),
              )
          ),
        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          showDialog(
            barrierDismissible: false,
              context: context,
              builder: (BuildContext context) { 
                return AlertDialog(
                  title: Text("Thank You!"),
                  content: Text("Login Successfull"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("No")),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ListTileDemo()));
                    }, child: Text("Yes")),
                  ],
                );
              });
        }, child: Text("Login")),
        SizedBox(height: 20,),
        Text("Don't have account ?"),
        SizedBox(height: 20,),
        Text("SIGN UP"),
      ],),
    );
  }
}
