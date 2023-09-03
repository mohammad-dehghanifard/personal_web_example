import 'package:flutter/material.dart';
import 'package:personal_web_example/components/themes.dart';
import 'package:personal_web_example/ui/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light,
      home: const MainScreen(),
    );
  }
}

