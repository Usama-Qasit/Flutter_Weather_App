import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/Consts/strings.dart';
import 'package:weather_app/models/current_weather_model.dart';
import 'package:weather_app/models/hourly_weather_model.dart';


getWeatherData(lat,long) async {
  var link = "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=$apiKey&units = metric";

  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = currentWeatherDataFromJson(res.body.toString());
    return data;
  }
}

getHourlyWeather(lat,long ) async{
  var hourlyLink = "https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$long&appid=$apiKey&units = metric";
  var res = await http.get(Uri.parse(hourlyLink));
  if(res.statusCode== 200){
    print("hourly data is recieved");
    var data = hourlyWeatherDataFromJson(res.body.toString());
    return data;
  }
}





