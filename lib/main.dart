import 'package:flutter/material.dart';
import 'package:task_app/screen/tab_bar/home.dart';
import 'package:task_app/screen/splash.dart';
import 'package:task_app/screen/tab_bar/invite_mamber.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: SplashScreen(),
    );
  }
}
