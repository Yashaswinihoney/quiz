import 'package:flutter/material.dart';

void main() {
  runApp(s2());
}

class s2 extends StatelessWidget {
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
            "Quiz"
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
                    height: 100,
                    width: 200,
                    margin: EdgeInsets.all(20),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu nisl nec mauris faucibus luctus non et neque. Donec rhoncus risus sit amet tellus pretium,",
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(
                        height: 5.0, color: Colors.black
                        ),
                      Padding(
                      padding: new EdgeInsets.all(8.0),
                        ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Radio(
                          value: 0,
                          groupValue: ,
                          onChanged: ,
                        ),
                        new Text(
                          'Option 1',
                          style: new TextStyle(fontSize: 16.0),
                        ),
                        new Radio(
                          value: 1,
                          groupValue: ,
                          onChanged: ,
                        ),
                        new Text(
                          'Option 2',
                          style: new TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        new Radio(
                          value: 2,
                          groupValue: ,
                          onChanged: ,
                        ),
                        new Text(
                          'Option 3',
                          style: new TextStyle(fontSize: 16.0),
                        ),
                        new Radio(
                          value: 2,
                          groupValue: ,
                          onChanged: ,
                        ),
                        new Text(
                          'Option 3',
                          style: new TextStyle(fontSize: 16.0),
                        ),
                      ]
                    ) 
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Previous"
                        ),
                      ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Next"),
                      ),
                    ]
                  ),
              ],
            ),
          )
        ),
      );
  }
}
