import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Quiz',
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
                child:
                    ListView(padding: EdgeInsets.zero, children: const <Widget>[
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
            ])),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.all(20),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu nisl nec mauris faucibus luctus non et neque. Donec rhoncus risus sit amet tellus pretium, eget condimentum nisl tempus. Ut interdum, nisl mattis gravida placerat, purus libero tristique libero, in consequat ipsum velit sed elit.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      gradient:
                          LinearGradient(colors: [Colors.red, Colors.pink]),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Domain1"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Domain1"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Domain1"),
                        ),
                      ]),
                  MaterialButton(
                    color: Colors.blue,
                    height: 40,
                    minWidth: 40,
                    splashColor: Colors.cyan,
                    onPressed: () {},
                    child: Icon(Icons.play_arrow),
                  )
                ]))));
  }
}
