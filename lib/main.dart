import 'package:demoapplication/pages/home_page.dart';
import 'package:demoapplication/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home:HomePage(),
      themeMode:ThemeMode.light,//theme agar change karni hai toh darkTheme ke ander bhi brightness ko light krna ho ga &viceversa...
      theme: ThemeData(primarySwatch: Colors.deepPurple,

        fontFamily:  GoogleFonts.lato().fontFamily,//lato ek method hai

      ),
      darkTheme: ThemeData(brightness: Brightness.light),
      //initialRoute: "/home",//=>default mein home page hi khule ga...
      routes: {//rasta batane ke liye jaise kaun se page pe jana hai....
        "/":(context)=>LoginPage(),//that is class
        //"/":(context)=>HomePage(),
        //"/login":(context)=>LoginPage()//ya toh home mein Home Page add kro ya phir route mein Home Page add kro
      },
    );
  }
}



