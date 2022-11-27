import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{
@override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("           APP DUNIYA"  ), //agar tumko font mein koi bhi change karna hai toh text likhne ke baad , laga kr style likhna pde ga
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to Flutter world"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
