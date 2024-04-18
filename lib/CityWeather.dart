// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CityWeather extends StatefulWidget {
  CityWeather({super.key, required this.city});
  String city = '';

  @override
  State<CityWeather> createState() => _CityWeatherState();
}

class _CityWeatherState extends State<CityWeather> {
  var weatherData;

  Future<void> getData(String city) async {
    String url =
        "https://samples.openweathermap.org/data/2.5/forecast?q=${city}&appid=9ac1276b207d04689d837b2957cc6bd3";
    try {
      final response = await http.get(Uri.parse(url));
      setState(() {
        weatherData = json.decode(response.body);
      });
    } catch (e) {
      print(e);
    }
  }

  void initState() {
    super.initState();
    getData(widget.city);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("City Weather"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade200,
      ),
      body: Center(
        child: Text(weatherData.toString()),
      ),
    );
  }
}
