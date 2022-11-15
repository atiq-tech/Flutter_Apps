import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:jiffy/jiffy.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  Position? position;

  determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    position = await Geolocator.getCurrentPosition();
    setState(() {
      latitude = position!.latitude;
      longatute = position!.longitude;
    });
    fetchWeatherData();
  }

  var latitude;
  var longatute;

  Map<String, dynamic>? weatherMap;
  Map<String, dynamic>? forecastMap;

  fetchWeatherData() async {
    String weatherUrl =
        "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longatute&units=metric&appid=f92bf340ade13c087f6334ed434f9761&fbclid=IwAR0N-DxhVkaKB092-R9L3tfvF719OYjMSvt9IxJfFAsyzzb8ZHIasdG_jQ8";
    String forecastUrl =
        "https://api.openweathermap.org/data/2.5/forecast?lat=$latitude&lon=$longatute&units=metric&appid=f92bf340ade13c087f6334ed434f9761&fbclid=IwAR0N-DxhVkaKB092-R9L3tfvF719OYjMSvt9IxJfFAsyzzb8ZHIasdG_jQ8";
    var weatherResponse = await http.get(Uri.parse(weatherUrl));
    var forecastResponse = await http.get(Uri.parse(forecastUrl));

    weatherMap = Map<String, dynamic>.from(jsonDecode(weatherResponse.body));
    forecastMap = Map<String, dynamic>.from(jsonDecode(forecastResponse.body));
    setState(() {
      print("Response dew amake ${latitude},${longatute}");
    });
  }

  @override
  void initState() {
    determinePosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 175, 220, 247),
        centerTitle: true,
        title: Text(
          "Weather App",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        titleSpacing: 10.0,
      ),
      body: forecastMap != null
          ? Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0),
                    child: Container(
                      width: 230,
                      height: 70,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 4),
                          color: Color.fromARGB(255, 240, 220, 161),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 14, 13, 13),
                                blurRadius: 15,
                                spreadRadius: 2,
                                offset: Offset(5, 5))
                          ]),
                      child: Column(
                        children: [
                          Text(
                            "${Jiffy(DateTime.now()).format("MMM do yy,h:mm a")}",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Text(
                            "${weatherMap!["name"]}",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 130,
                    height: 100,
                    child: Image.asset(
                      "images/wtp.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "${weatherMap!["main"]["temp"]} °",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 160.0),
                    child: Container(
                      width: 180,
                      height: 70,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 4),
                          color: Color.fromARGB(255, 176, 250, 205),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 14, 13, 13),
                                blurRadius: 10,
                                spreadRadius: 2,
                                offset: Offset(5, 10))
                          ]),
                      child: Column(
                        children: [
                          Text(
                            "Feels like${weatherMap!["main"]["feels_like"]} °",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Text(
                            "${weatherMap!["weather"][0]["description"]}",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    height: 70,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 4),
                        color: Color.fromARGB(255, 109, 112, 252),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 14, 13, 13),
                              blurRadius: 8,
                              spreadRadius: 2,
                              offset: Offset(5, 5))
                        ]),
                    child: Column(
                      children: [
                        Text(
                          "Humidity ${weatherMap!["main"]["humidity"]}, Pressure${weatherMap!["main"]["pressure"]}",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 250, 248, 248)),
                        ),
                        Text(
                          "Sunrise ${Jiffy(DateTime.fromMillisecondsSinceEpoch(weatherMap!["sys"]["sunrise"] * 1000)).format("h:mm a")}, Sunset${Jiffy(DateTime.fromMillisecondsSinceEpoch(weatherMap!["sys"]["sunset"] * 1000)).format("h:mm a")}",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 250, 248, 248)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: forecastMap!.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 170,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 14, 13, 13),
                                    blurRadius: 8,
                                    spreadRadius: 2,
                                    offset: Offset(5, 5))
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 174, 210, 240),
                            ),
                            margin: EdgeInsets.only(right: 15),
                            child: Column(
                              children: [
                                Text(
                                  "${Jiffy(forecastMap!["list"][index]["dt_txt"]).format("EEE, h:mm")}",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w900,
                                      color: Color.fromARGB(255, 163, 5, 150)),
                                ),
                                Image.network(
                                    "http://openweathermap.org/img/wn/${forecastMap!["list"][index]["weather"][0]["icon"]}@2x.png"),
                                Text(
                                  "${forecastMap!["list"][index]["main"]["temp_min"]}/${forecastMap!["list"][index]["main"]["temp_max"]}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${forecastMap!["list"][index]["weather"][0]["description"]}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 110, 2, 74)),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            )
          : CircularProgressIndicator(),
    );
  }
}
