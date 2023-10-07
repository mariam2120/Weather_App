import 'package:flutter/material.dart';

class NoWeatherShow extends StatelessWidget {
  const NoWeatherShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: const Color.fromARGB(255, 127, 174, 193),
            ),
            child: const Center(
              child: Text(
                "Search for the city whose weather you want to know 👆🏻",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
