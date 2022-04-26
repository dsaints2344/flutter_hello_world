import 'package:flutter/material.dart';
import 'package:hello_world/screens/bmi_screen.dart';
import 'package:hello_world/screens/sessions_screen.dart';
import 'package:hello_world/screens/weather_screen.dart';
import 'screens/intro_screen.dart';

void main() {
  runApp(const GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        routes: {
          '/': (context) => const IntroScreen(),
          '/bmi': (context) => const BmiScreen(),
          '/weather': (context) => const WeatherScreen(),
          '/sessions': ((context) => const SessionsScreen())
        },
        initialRoute: '/');
  }
}
