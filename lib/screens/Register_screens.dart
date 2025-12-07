
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final TextEditingController passwordcontroller = TextEditingController();
final TextEditingController confirmpasswordcontroller = TextEditingController();

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title : Text('Register', style: TextStyle(),),
        backgroundColor: Colors.blue,

      ),
      body : Padding(padding: EdgeInsets.all(25),
        child: Form(
          key: _formKey,
         child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.asset(
              'assets/images/free.jpg',
              height: 200,
              width: 500,
            ),
            Text ('REGISTRATION',style: TextStyle(fontSize: 20),),
            SizedBox(height:20),
            Text ('Create Account',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            SizedBox(height:20),

            TextField(
              decoration: InputDecoration(
                hintText: 'Full name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                hintText: 'Gmail',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            TextFormField(
             // key: _formKey,
              controller: passwordcontroller,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
              ),
              validator: (oge) {
                if (oge == null || oge.isEmpty) {
                  return "Enter password";
                }
                return null;
              },
            ),
            SizedBox(height: 20,),

            TextFormField(
             // key: _formKey,
              controller: confirmpasswordcontroller,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                hintText: "Confirm Password",
                border: OutlineInputBorder(),
              ),
              validator: (oge){
                if(oge == null || oge.isEmpty){
                  return 'confirm your password';
                }
                if (oge != passwordcontroller.text){
                return 'password do not match';}
              },
            ),
            SizedBox(height: 20),

            Text ('Accept the terms and conditions as well as privacy policy of the application', style: TextStyle(fontSize: 18),),

            ElevatedButton(onPressed: () {
              if (!_formKey.currentState!.validate()) return;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Registration successful")),              );
            },

              child: Text("Register", style: TextStyle(fontSize: 20), ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity,50,)
              ),

            ),
          ],
      ),

      ),
    ),
        backgroundColor: Colors.grey[200],
    ),
    );
  }
}
