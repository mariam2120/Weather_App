import 'package:bloc/bloc.dart';
import 'package:weather/Models/weather_model.dart';
import 'package:weather/Services/weather_services.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  getWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel =
          await WeatherServices().getWeatherData(cityName: cityName);
      emit(WeatherLoaded(weatherModel: weatherModel));
    } on Exception {
      emit(WeatherFailure());
    }
  }
}
