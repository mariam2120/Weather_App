// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:weather/Models/weather_model.dart';

class WeatherServices {
  late WeatherModel weatherModel;

  final dio = Dio();
  bool isloading = true;
  final String baseURL = "http://api.weatherapi.com/v1";
  final String APIkey = "ebb121c531dc42bcb98104523232009";

  Future<WeatherModel> getWeatherData({required String cityName}) async {
    final response = await dio.get(
        "$baseURL/forecast.json?key=$APIkey&q=$cityName&days=1&aqi=no&alerts=no");
    weatherModel = WeatherModel.fromJson(response.data);

    return weatherModel;
  }
}
