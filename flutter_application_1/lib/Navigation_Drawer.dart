import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigation_Drawer extends StatefulWidget{
  @override
  Navigation_State createState() {
    return Navigation_State();
  }
}
class Navigation_State extends State<Navigation_Drawer>
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.transparent,
        body: Container(
          color: Colors.white,
          width: 400,
          child: ListView(padding: EdgeInsets.zero, children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ]
          ),
        )
   );
  }

}