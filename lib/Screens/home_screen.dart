// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/Manager/cubit/weather_cubit.dart';
import 'package:weather/Screens/no_weather.dart';
import 'package:weather/Screens/search_screen.dart';
import 'package:weather/Screens/weather_display.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Weather",
              style: TextStyle(
                color: Color.fromARGB(255, 106, 158, 179),
                fontSize: 28,
              ),
            ),
            Text(
              "App",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ));
              },
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.black,
                size: 35,
              )),
        ],
      ),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitial)
            return const NoWeatherShow();
          else if (state is WeatherLoaded)
            return WeatherDisplay(
              weatherModel: state.weatherModel,
            );
          else
            return const NoWeatherShow();
        },
      ),
    );
  }
}
