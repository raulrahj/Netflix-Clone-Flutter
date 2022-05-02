import 'package:flutter/material.dart';
import 'package:netflix/core/constants/theme_data.dart';
import 'package:netflix/main_screens/root_screen/widgets/screen_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      theme: defaultDark,
      home: ScreenController(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
