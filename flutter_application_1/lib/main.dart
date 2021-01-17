import 'package:flutter/material.dart';
import 'package:flutter_application_1/Navigation_Drawer.dart';
import 'package:flutter_application_1/QuizRepostory.dart';
import 'package:flutter_application_1/s2.dart';
import 'package:flutter_application_1/s3.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home:  MyApp(),
      routes: <String, WidgetBuilder>{
        '/s3':(BuildContext context) => new s3(),
        '/home':(BuildContext context) => new MyApp()
      },
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => s2(),
    transitionDuration: Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
    var begin = Offset(0.0, 1.0);
    var end = Offset.zero;
    var curve = Curves.ease;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    return SlideTransition(
      position: animation.drive(tween),
      child: child
    );
  },
  );
}



class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  QuizRepository _quizRepository=QuizRepository();

  int quiz_id=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text(
                "Quiz",
              ),
            ),

            drawer: Navigation_Drawer(),
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
                        child: Text(_quizRepository.get_quiz(quiz_id).quiz_description),
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
                              onPressed: () {quiz_id=1;setState(() {

                              });},
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
                        onPressed: () {Navigator.of(context).pushReplacement(_createRoute());},
                        child: Icon(Icons.play_arrow),
                      )
                    ])));
  }
}
