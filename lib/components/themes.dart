import 'package:flutter/material.dart';

class AppThemes{
  AppThemes._();

  static ThemeData light = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if(states.contains(MaterialState.hovered)){
            return Colors.blue;
          }else{
            return Colors.amber;
          }
        }),
        foregroundColor: const MaterialStatePropertyAll(Colors.black),
        padding: const MaterialStatePropertyAll(EdgeInsets.all(16))
      )
    )
  );
}