class WeatherModel {
  late String cityName;
  late String lastDate;
  late double temp;
  late double maxTemp;
  late double minTemp;
  late String image;
  late String weatherCondation;
  WeatherModel(
      {required this.cityName,
      required this.lastDate,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.image,
      required this.weatherCondation});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        cityName: json["location"]["name"],
        lastDate: json["current"]["last_updated"],
        temp: json["current"]["temp_c"],
        maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
        minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
        image: json["current"]["condition"]["icon"],
        weatherCondation: json["forecast"]["forecastday"][0]["day"]["condition"]["text"]);
  }
}
