// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/CityWeather.dart';

class Weather extends StatefulWidget {
  Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  String city = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter a City"
                ),
                onChanged: (value) {
                  setState(() {
                    city = value;
                  });
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                child: Text("Get Weather"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CityWeather()));
                },
              )
            ),
          ],
        ),
      ),
    );
  }
}