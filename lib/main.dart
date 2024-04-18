// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/quizz.dart';
import 'package:myapp/weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Class5',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade200,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      drawer: Builder(builder: (context) {
        return Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.blue,const Color.fromARGB(255, 134, 64, 255)])
                ),
                child: Center(
                  child: CircleAvatar(
                    radius:50,
                    backgroundColor: Colors.red,
                  ),
                )
              ),
              ListTile(
                title: Text("Quizz Game"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Quizz()
                  ));
                },
              ),
              ListTile(
                title: Text("Weather Page"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Weather()
                  ));
                },
              ),
              ListTile(
                title: Text("Friends"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Friends()
                  ));
                },
              ),
            ],
          ),
        );
      }),
      body: Center(
        child: Text("hh"),
      ),
    );
  }
}


class Friends extends StatelessWidget {
  const Friends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friends"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade200,
      ),
      body: Center(
        child: Text("hh"),
      ),
    );
  }
}