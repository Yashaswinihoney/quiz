import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'dart:io';
import 'package:flutter/src/material/colors.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: "Quiz",
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: Text(
                "Quiz",
              ),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const <Widget>[
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
                    leading: Icon(Icons.message),
                    title: Text('Messages'),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                ],
              ),
            ),
            body: Center(
              child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                height: 200,
                width: 200,
                child: Text(
                  ""
                ),
                decoration: BoxDecoration(
                  color: Colors.teal,
                  gradient:LinearGradient(
                    colors: [Colors.red, Colors.pink]),
                  borderRadius:BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5)],
                  
                ),
            ),
          ),
        ),
      );
    )
  }
}
