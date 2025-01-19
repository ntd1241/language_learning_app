import 'package:flutter/material.dart';
import 'package:language_learning_app/theme/theme.dart';
import 'package:language_learning_app/theme/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Language Learning App",
      theme: theme,
      home: const Scaffold(
        body: Center(
          child: Text('Hello World 123!'),
        ),
        backgroundColor: AppColors.bgMain,
      ),
    );
  }
}
