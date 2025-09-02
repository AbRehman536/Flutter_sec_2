import 'package:flutter/material.dart';

class LoginFormScreen extends StatelessWidget {
  const LoginFormScreen({super.key});

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
        ElevatedButton(onPressed: (){}, child: Text("Login")),
        SizedBox(height: 20,),
        Text("Don't have account ?"),
        SizedBox(height: 20,),
        Text("SIGN UP"),
      ],),
    );
  }
}
