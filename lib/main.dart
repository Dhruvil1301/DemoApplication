import 'package:demoapplication/pages/home_page.dart';
import 'package:demoapplication/pages/login_page.dart';
import 'package:demoapplication/utiils/route.dart';
import 'package:demoapplication/utiils/widgets/themes.dart';
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
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,//isiye koiki debug ka banner htt jaye ga
      darkTheme: ThemeData(brightness: Brightness.light),
      initialRoute: "/home",//=>default mein home page hi khule ga...
      routes: {//rasta batane ke liye jaise kaun se page pe jana hai....
        "/":(context)=>LoginPage(),//that is class
        MyRoutes.homeRoute:(context)=>HomePage(),
        MyRoutes.loginRoute:(context)=>LoginPage()//ya toh home mein Home Page add kro ya phir route mein Home Page add kro
      },
    );
  }
}



