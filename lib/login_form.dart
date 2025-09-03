import 'package:flutter/material.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
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
          if(emailController.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Your email is empty")));
            return;
          }
          if(passwordController.text.isEmpty){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Your password is empty")));
            return;
          }
          if(passwordController.text.length < 8){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Your password is less than 8 digits")));
            return;
          }

        }, child: Text("Login")),
        SizedBox(height: 20,),
        Text("Don't have account ?"),
        SizedBox(height: 20,),
        Text("SIGN UP"),
      ],),
    );
  }
}
