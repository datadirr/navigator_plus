import 'package:flutter/material.dart';
import 'package:navigator_plus_example/fisrt_screen.dart';
import 'package:navigator_plus_example/second_screen.dart';

class Routes {
  static const firstScreen = '/firstScreen';
  static const secondScreen = '/secondScreen';

  static Map<String, WidgetBuilder> routes(BuildContext context) {
    return {
      firstScreen: (context) => const FirstScreen(),
      secondScreen: (context) => const SecondScreen(),
    };
  }
}
