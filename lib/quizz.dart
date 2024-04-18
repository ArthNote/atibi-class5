// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';


class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {

  int currentQs = 0;
  var quizz = [
    {
      'title': "who's the best player in 2023",
      'answers':[
        {
          'answer' : "messi",
          'correct' : true
        },
        {
          'answer' : "ronaldo",
          'correct' : false
        },
        {
          'answer' : "you",
          'correct' : false
        }
      ]
    },
    {
      'title': "who's the worst player in 2023",
      'answers':[
        {
          'answer' : "you",
          'correct' : true
        },
        {
          'answer' : "ziach",
          'correct' : false
        },
        {
          'answer' : "rahimi",
          'correct' : false
        }
      ]
    },
    {
      'title': "best programming language is?",
      'answers':[
        {
          'answer' : "flutter",
          'correct' : true
        },
        {
          'answer' : "python",
          'correct' : false
        },
        {
          'answer' : "php",
          'correct' : false
        }
      ]
    },
  ];
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quizz"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade200,
      ),
      body: (this.currentQs>=quizz.length)? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Score ${(100*score/quizz.length).round()}%",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              child: Icon(Icons.replay),
              onPressed: (){
                setState(() {
                  currentQs = 0;
                  score = 0;
                });
              }, 
            )
          ],
        ),
      ) : Center(
        child: ListView(
          children: [
            ListTile(
              title: Center(
                child: Text('Question ${currentQs+1}/${quizz.length}'),
              ),
            ),
            ListTile(
              title: Center(
                child: Text(quizz[currentQs]['title'].toString()+" ?")
              ),
            ),
            ...(quizz[currentQs]['answers'] as List<Map<String,Object>>).map(
              (answer) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: ListTile(
                    tileColor: Colors.blue.shade100,
                    title: Text(answer['answer'].toString()),
                    onTap: () {
                      setState(() {
                        ++currentQs;
                        if (answer['correct'] as bool){
                          ++score;
                        }
                      });
                    },
                  ),
                );
              }
            )
          ],
        ),
      ),
    );
  }
}