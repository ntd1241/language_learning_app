import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/your_learning/your_learning_screen.dart';
import 'package:language_learning_app/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Language Learning App",
        theme: theme,
        home: YourLearningScreen());
  }
}
