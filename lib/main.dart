import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:notelet/screens/get_started_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Notelet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // This is the theme of your application.
          primarySwatch: Colors.blue,
          fontFamily: 'Roboto'),
      home: const HomeScreen(),
    );
  }
}
