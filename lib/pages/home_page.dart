import 'package:demoapplication/models/catalog.dart';
import 'package:demoapplication/utiils/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../utiils/widgets/item_widget.dart';
//Day 11 we learned about context and contraint
class HomePage extends StatelessWidget{ //Stateless means to go in next page
  // Statefull means to change in same screen
@override
  Widget build(BuildContext context){
  final dummyList=List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text("             Catalog App" ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold), ), //agar tumko font mein koi bhi change karna hai toh text likhne ke baad , laga kr style likhna pde ga
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          //CatalogModel.items.length, //dummyList.length,
          itemBuilder: (context,index){
            return ItemWidget(item: dummyList[index],);
          },
        ),
      ),
      drawer:MyDrawer(),
    );
  }
}
