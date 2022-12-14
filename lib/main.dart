import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/weather/presentation/bloc/weather_app_bloc.dart';
import 'package:weather_app/weather/presentation/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: 'Weather app',
          theme: ThemeData(),
          home: BlocProvider(create: (context) => WeatherAppBloc(), child: const WeatherAppMainPage()),
        );
      },
    );
  }
}
