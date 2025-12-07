import 'package:flutter/material.dart';
import 'register_screens.dart';
import 'forgot_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override

  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          title: Text('CSC309', style: TextStyle(),),
          backgroundColor: Colors.blue,
        ),
        body: Padding(padding: EdgeInsets.all(25),
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset(
                'assets/images/free.jpg',
                height: 200,
                width: 500,
              ),
              SizedBox(height: 20,),

              Text ('Login', style: TextStyle(fontSize: 30, color: Colors.blue),),
              SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20,),

              InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> Forgot_password(),),
                    );

                  },
                child: const Align(alignment: Alignment.centerRight,

                  child : Text('Forgot Password', style: TextStyle(fontSize: 20, color: Colors.blue)), ),),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                setState(() {
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size (double.infinity,50, )
              ),

                child: Text('Login',),),
              SizedBox(height: 15,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> Register(),),);
                },
                child : Text('Register', style: TextStyle(fontSize: 20, color: Colors.blue),),
              ),
            ],
          ),
          //floatingActionButton: FloatingActionButton(onPressed: (){}),
        ),
       //backgroundColor: Colors.grey[200],

    ));

  }
}
