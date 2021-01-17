
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Navigation_Drawer.dart';
import 'package:flutter_application_1/QuestionsRepository.dart';
import 'package:flutter_application_1/QuizRepostory.dart';

class s2 extends StatefulWidget {
  @override
  s2State createState() => s2State();
}

 class s2State extends State<s2> with TickerProviderStateMixin {
  int index=1;
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    controller=AnimationController(duration: Duration(milliseconds: 500),vsync: this)..addListener(() {setState(() {});});
    animation=Tween(begin: 0.0, end: pi*2).animate(controller);
    //controller.forward();
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
                "Quiz"
            ),
          ),
          drawer:Navigation_Drawer(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform(
                  alignment: FractionalOffset.center,
                  transform: Matrix4.identity()..setEntry(3, 2, 0.001)..rotateX(animation.value),
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 200,
                        width: 400,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          //color: Colors.teal,
                          gradient:
                          LinearGradient(colors: [Colors.red, Colors.pink]),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 185,top: 110),
                        child: Text(QuestionsRepository.question_map[index].question_info,style: TextStyle(fontSize: 15),),
                      ),
                    ],
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
                          new Checkbox(
                            value: QuestionsRepository.question_map[index].options[0].selected,
                            activeColor: Colors.blue,
                            onChanged:(value){
                              QuestionsRepository.question_map[index].options[0].selected=!QuestionsRepository.question_map[index].options[0].selected;
                              if(value==true)
                                QuestionsRepository.question_map[index].options[1].selected=false;
                              setState(() {});
                            }
                          ),
                          new Text(
                            QuestionsRepository.question_map[index].options[0].option_info,
                            style: new TextStyle(fontSize: 16.0),
                          ),
                          new Checkbox(
                            activeColor: Colors.blue,
                            value: QuestionsRepository.question_map[index].options[1].selected,
                            onChanged: (value){
                              QuestionsRepository.question_map[index].options[1].selected=!QuestionsRepository.question_map[index].options[1].selected;
                              if(value==true)
                                QuestionsRepository.question_map[index].options[0].selected=false;
                               setState(() {});
                            }
                          ),
                          new Text(
                            QuestionsRepository.question_map[index].options[1].option_info,
                            style: new TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
      ])
        ]
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      if(index!=1)
                      ElevatedButton(
                        onPressed: () {index--;setState(() {
                          controller.forward(from: 0.0);
                        });},
                        child: Text("Previous"),
                      ),
                      if(index!=2)
                      ElevatedButton(
                        onPressed: () {index++;setState(() {
                          controller.forward(from: 0.0);

                        });},
                        child: Text("Next"),
                      ),
                      if(index==2)
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/s3');
                         },
                        child: Text("Finish"),
                      ),
                    ]
                ),
              ],
            ),
          )
      );
  }
}
