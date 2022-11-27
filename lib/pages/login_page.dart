import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)//class hardam capital letter se start ho gi
  //build ek function hai..small letter is used,,,,
  {
    return Material(
      /*child:Center(child: Text("LOGIN PAGE",style: TextStyle( //textstyle bhi ek class hai...
             fontSize: 30,//text size
                color: Colors.blue,//text color
                  fontWeight: FontWeight.bold,//font style ...bold,italic etc,.
                 ),
                     textScaleFactor: 2.0,
      ),
      ),
      );*/
      color: Colors.white,
      child:Column(
        children: [
          Image.asset("assets/images/login_page.png",fit: BoxFit.cover
          ),
          SizedBox(
            height: 20.0,
          ),
          Text("Welcome",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold ),),
          SizedBox(
            height: 20.0,
          ),
          Padding(padding:const
               EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),

            child:Column(children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Enter UserName",
                labelText:"UserName",
              ),
            ),
            TextField(
              obscureText: true ,//text dot dot ho jata hai
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText:"Password",
              ),

            ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(onPressed: (){//on Pressed ek function hai jiske ander jo kaam krna hai wo kr skte hai
                   print("Kaise hain app log");
              }, child: Text("Login"),style:TextButton.styleFrom(),)
              //cntrl click se docomentation khulti hai
          ],),)
        ], //image ka path add kr dena
      )
    );
      //textstyle bhi ek class hai...
  }}