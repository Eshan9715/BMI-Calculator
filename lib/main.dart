import 'package:flutter/material.dart';

import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme : ThemeData(
    primaryColor: const Color(0xFF000000),
    scaffoldBackgroundColor: const Color(0xFF000000)),
        home: const MainScreen()
    );
  }
}

