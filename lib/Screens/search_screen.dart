import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/Manager/cubit/weather_cubit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: TextFormField(
            onFieldSubmitted: (value) {
              BlocProvider.of<WeatherCubit>(context)
                  .getWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              prefix: Padding(
                padding: EdgeInsets.only(
                  right: 8,
                ),
                child: Icon(Icons.location_on_outlined),
              ),
              labelText: "SEARCH",
              hintText: "City NAME",
            ),
          ),
        ),
      ),
    );
  }
}
