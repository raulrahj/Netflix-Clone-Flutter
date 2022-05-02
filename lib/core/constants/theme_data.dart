import 'package:flutter/material.dart';

ThemeData defaultDark = ThemeData(
    // fontFamily: ,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(),
    scaffoldBackgroundColor: const Color(0XFF000000),
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
      backgroundColor: Color(0XFF1F1F1F),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(primary: Colors.grey[100],)),
    
    
    
    
    );
