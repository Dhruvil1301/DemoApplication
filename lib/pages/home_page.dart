import 'package:demoapplication/utiils/widgets/drawer.dart';
import 'package:flutter/material.dart';
//Day 11 we learned about context and contraint
class HomePage extends StatelessWidget{ //Stateless means to go in next page
  // Statefull means to change in same screen
@override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text("             Catalog App" ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold), ), //agar tumko font mein koi bhi change karna hai toh text likhne ke baad , laga kr style likhna pde ga
      ),
      body: Center(
        child: Container(
            // child:Text(context.runtimeType.toString()),
          child: Text("Welcome to Flutter world",style: TextStyle(fontSize: 25,color: Colors.pink),),
        ),
      ),
      drawer:MyDrawer(),
    );
  }
}
