import 'package:flutter/material.dart';
import 'package:quiz_app/screen/Quiz_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: QuizApp(),
    );
  }
}
