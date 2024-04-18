// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CityWeather extends StatefulWidget {
  const CityWeather({super.key});

  @override
  State<CityWeather> createState() => _CityWeatherState();
}

class _CityWeatherState extends State<CityWeather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("City Weather"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade200,
      ),
      body: Center(
        child: Text("this is weather page"),
      ),
    );
  }
}