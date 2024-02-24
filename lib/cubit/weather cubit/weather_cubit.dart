import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather%20cubit/weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.weatherService) : super(WeatherInitial());
  WeatherService weatherService;
  WeatherModel? weatherModel;

  void getWeather(String cityName) async {
    //? Data Is Loading
    emit(WeatherLoading());
    // * Data Is Loaded
    try {
      weatherModel = await weatherService.getWeather(cityName: cityName);
      emit(WeatherSuccess());
      // * Data Is Not Loaded
    } on Exception {
      emit(WeatherFailure());
    }
  }
}
