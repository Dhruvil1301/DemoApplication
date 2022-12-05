import 'package:demoapplication/utiils/route.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget{ //statefull ke under 2 class hoti hai
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {// "_" underscore means kisi bhi cheez ko private karna
  String name="";
  bool changeButton=false;
  final _formKey= GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
     setState(() {
       changeButton=true;
     });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context,MyRoutes.homeRoute );
    setState(() {
      changeButton=false;
    });}
  }
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
      child:SingleChildScrollView(
      child:Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset("assets/images/welcome_img.png",fit: BoxFit.cover,height: 300,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Welcome! $name",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),),
            SizedBox(
              height: 20.0,
            ),
            Padding(padding:const
                 EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),

              child:Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter UserName",
                  labelText:"UserName",
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Username cannot be Empty";
                  }
                  return null;
                },
                onChanged: (value){
                  name=value;
                  setState(() {

                  });

                },
              ),
              TextFormField(
                obscureText: true ,//text dot dot ho jata hai
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText:"Password",
                ),
                validator:(value){
                  if(value!.isEmpty){
                    return "Password cannot be Empty";
                  }
                  else {
                    if(value.length<6){
                    return "Password accept more than 6 character";
                  }
                  }
                  return null;
                },

              ),
                SizedBox(
                  height: 40.0,
                ),
                
                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton?50:8),
                  child: InkWell(// work like button...used as container
                    splashColor: Colors.deepPurple.shade300,
                    onTap: () =>moveToHome(context),

                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton?50:150,
                      height:50 ,
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child : changeButton
                        ?Icon(Icons.done,color: Colors.white):Text("Login",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 18)),
                        //shape: changeButton?
                          //BoxShape.circle:BoxShape.rectangle,
                    ),
                  ),
    //Contain ek box hota hai
                // ElevatedButton(onPressed: (){//on Pressed ek function hai jiske ander jo kaam krna hai wo kr skte hai
                //      Navigator.pushNamed(context,MyRoutes.homeRoute );//Navigator ka use tbb hota jb hume next page yah phir back hone ke liye hota hai/Push,pop
                // }, child: Text("Login"),style:TextButton.styleFrom(minimumSize: Size(150,40)),)
                //cntrl click se docomentation khulti hai
                ) ],),)
          ], //image ka path add kr dena
        ),
      ),)
    );
      //textstyle bhi ek class hai...
  }}
