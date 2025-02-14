import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/practice/practice.dart';
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
        home: PracticeScreen());
  }
}
