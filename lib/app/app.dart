import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); // PRIVATE NAMED CONSTRUCTOR.

  int appState = 0;

  static final MyApp instance = MyApp._internal(); // SINGLE INSTANCE -- SINGLETON.

  factory MyApp() => instance; // FACTORY FOR THE CLASS INSTANCE .
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
