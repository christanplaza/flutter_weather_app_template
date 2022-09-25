import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app_template/widgets/main_widget.dart';

Future main() async {
  await dotenv.load();

  runApp(
    MaterialApp(
      title: "Weather App",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainWidget(
        location: "Japan",
        temp: 27,
        tempMin: 16,
        tempMax: 28,
        weather: "sunny",
        humidity: "57",
        windSpeed: "10",
      ),
    );
  }
}
