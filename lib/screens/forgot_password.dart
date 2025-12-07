import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forgot_password extends StatefulWidget {
  const Forgot_password({super.key});

  @override
  State<Forgot_password> createState() => _Forgot_passwordState();
}

class _Forgot_passwordState extends State<Forgot_password> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text ('forgot password', style: TextStyle(),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(padding: EdgeInsets.all(25),

          child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/free.jpg',
            height: 200,
            width: 500,
          ),
          Text ('Password forgotten', style: TextStyle(fontSize: 40),),
          SizedBox(height: 20,),
          Text ('Please enter your Gmail associated with your Henry Account', style: TextStyle(fontSize: 25),),
          SizedBox(height: 20,),

          TextField(
            decoration: InputDecoration(
              hintText: 'Gmail',
              border: OutlineInputBorder()
            ),
          ),
          Text ('Please double check the Gmail as request will be sent to the Gmail', style: TextStyle(fontSize: 25),),
          SizedBox(height: 40,),

          ElevatedButton(onPressed : (){
            setState(() {

            });
          },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity,50),
              ),
              child: Text ('Reset password',style: TextStyle(fontSize: 20),))



        ],
      ),

      ),
    //  backgroundColor: Colors.yellow[100],
    ));
  }
}
