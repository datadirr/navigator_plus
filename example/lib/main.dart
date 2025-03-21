import 'package:flutter/material.dart';
import 'package:navigator_plus_example/fisrt_screen.dart';
import 'package:navigator_plus_example/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes.routes(context),
      home: const FirstScreen(),
    );
  }
}
