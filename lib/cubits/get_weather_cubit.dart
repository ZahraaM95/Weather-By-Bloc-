// ignore_for_file: unused_local_variable

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/cubits/get_weather_state.dart';
import '../models/modle_services.dart';
import '../services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState>{
  GetWeatherCubit(initialState) : super(WeatherinitialState());

  getWeather({required String cityName}) async {
    try {
      WeatherModle weatherModle =
          await WeatherServices(Dio()).getCurrentweather(cityName: cityName);
    } catch (e) {
      emit(WeatherFailerState());
    }
  }
}

