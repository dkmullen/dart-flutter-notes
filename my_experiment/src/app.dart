import 'package:flutter/material.dart';
import './services/color_service.dart';
import './screens/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Experiment',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
        primarySwatch: createMaterialColor(
          const Color(0xFF6d8b74),
        ),
      ).copyWith(
        secondary: createMaterialColor(
          const Color(0xFFD0C9C0),
        ),
      )),
      home: const MyHomePage(title: 'My Experiment | Home'),
    );
  }
}
