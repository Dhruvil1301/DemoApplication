import 'package:flutter/material.dart';

import '../../models/catalog.dart' ;
class ItemWidget extends StatelessWidget{
  final Item item;
  const ItemWidget({required this.item})
  : assert(item!=null);
    //super(key: key);
  @override
  Widget build(BuildContext context){
    return Card(//card se card mein so hone lage ga
      elevation: 1.0,
      child: ListTile(
        onTap: (){
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle:  Text(item.desc),
        trailing: Text("\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.deepOrange),
        ),//\yaha par isiliye use hua hai kyoki $ mein price aa skke
      ),
    );
  }
}