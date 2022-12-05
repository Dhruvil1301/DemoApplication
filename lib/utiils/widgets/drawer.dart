import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){  //
    final ImageUrl="https://instagram.fbho1-1.fna.fbcdn.net/v/t51.2885-19/306213010_610430043819997_2843980053236011992_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fbho1-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=fxpdr68wDwUAX8p45Vd&edm=AAAAAAABAAAA&ccb=7-5&oh=00_AfBscS5e9ezbbXTkrhwDojWAhgvnzGhZgifBENJrfC0BKQ&oe=638BB2CA&_nc_sid=022a36";
    return Drawer(
     child: Container(
       color: Colors.deepPurple,
       child: ListView(
         children: [
           DrawerHeader(
             padding:  EdgeInsets.zero,
               child: UserAccountsDrawerHeader(
                 margin: EdgeInsets.zero,
                 accountName: Text("Dhruvil Agrahari"),
                 accountEmail: Text("dhruvilagrahari4@gmail.com"),
                 currentAccountPicture:CircleAvatar(
                   backgroundImage: NetworkImage(ImageUrl),//network se image lane ke liye NetworkImage ka use kre ge
                                                            // asset ka bhi use kr skte hai image lane ke liye
                 ),
               ),
           ),
           ListTile(
             leading: Icon(
               CupertinoIcons.home,
               color:Colors.white,
             ),
             title:Text(
               "Home",
               textScaleFactor: 1.2,       //for home
               style: TextStyle(
                 color: Colors.white,
               ),
             ),
           ),
           ListTile(
               leading: Icon(
                 CupertinoIcons.profile_circled,
                 color:Colors.white,
               ),
               title:Text(
                 "Profile",
                 textScaleFactor: 1.2,      //for profile
                 style: TextStyle(
                   color: Colors.white,
                 ),
               ),
           ),
           ListTile(
               leading: Icon(
                 CupertinoIcons.bell,
                 color:Colors.white,
               ),
               title:Text(
                 "Notification",
                 textScaleFactor: 1.2,             //For notification
                 style: TextStyle(
                   color: Colors.white,
                 ),
               ),
           ),
           ListTile(
               leading: Icon(
                 CupertinoIcons.question,
                 color:Colors.white,
               ),
               title:Text(
                 "Help",
                 textScaleFactor: 1.2,
                 style: TextStyle(
                   color: Colors.white,
                 ),
               ),
           ),
           ListTile(
               leading: Icon(
                 CupertinoIcons.settings,
                 color:Colors.white,
               ),
               title:Text(
                 "Settings",
                 textScaleFactor: 1.2,
                 style: TextStyle(
                   color: Colors.white,
                 ),
               ),
           ),
           ListTile(
               leading: Icon(
                 CupertinoIcons.arrow_right_square,
                 color:Colors.white,
               ),
               title:Text(
                 "Logout",
                 textScaleFactor: 1.2,
                 style: TextStyle(
                   color: Colors.white,
                 ),
               )
           )
         ],
       ),
     ),
    );
  }
}