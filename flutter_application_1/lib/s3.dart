import 'package:flutter/material.dart';
import 'package:flutter_application_1/Navigation_Drawer.dart';


class s3 extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _s3State createState() => _s3State();
}

class _s3State extends State<s3> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double>animation;

  @override
  void initState() {
    controller =AnimationController(duration:Duration(seconds: 1),vsync: this)..addListener(
            () {
              setState(() {});
              if(controller.isCompleted){
                Navigator.pushReplacementNamed(context, '/home');
              }
            }
            );
    animation=Tween(begin: 1.0,end: 0.0).chain(CurveTween(curve:Curves.easeIn)).animate(controller);

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text(
                "Quiz",
              ),
            ),

            drawer:Navigation_Drawer(),
            body: Container(
              width: MediaQuery.of(context).size.width*animation.value,
              height: MediaQuery.of(context).size.height*animation.value,
              child: controller.value<0.9?
                Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          //padding: const EdgeInsets.all(8),
                          alignment: Alignment.center,
                          height: 80*animation.value,
                          width: 100*animation.value,
                          //margin: EdgeInsets.all(20),
                          child: Text(
                            "Total Questions Answered: ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20*animation.value,
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
                                onPressed: () {controller.forward(from: 0.0);},
                                child: Text(
                                  "Re-attempt",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20*animation.value,
                                  ),
                                ),
                              ),
                            ]),
                        Container(
                         // padding: const EdgeInsets.all(8),
                          alignment: Alignment.center,
                          height: 200*animation.value,
                          width: 200*animation.value,
                         // margin: EdgeInsets.all(20),
                          child: Text(
                            "Rewards ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20*animation.value,
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
                      ]
                  )
              ):null
            )
        );
  }
}
