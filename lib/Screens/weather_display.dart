import 'package:flutter/material.dart';
import 'package:weather/Models/weather_model.dart';

class WeatherDisplay extends StatelessWidget {
  final WeatherModel weatherModel;
  const WeatherDisplay({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityName,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'updated at ${weatherModel.lastDate}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https:${weatherModel.image}",
                  height: 100,
                ),
                Text(
                  '${weatherModel.temp}Â°C',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 183, 55, 35),
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Maxtemp : ${weatherModel.maxTemp}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Mintemp : ${weatherModel.minTemp}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              weatherModel.weatherCondation,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
