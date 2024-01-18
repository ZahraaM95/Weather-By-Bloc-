// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';
import 'package:weather_app/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/get_weather_state.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => GetWeatherCubit(WeatherinitialState),
      child: const MaterialApp(
          home: HomeView(),
      
          
      ),
    );
  }
}
