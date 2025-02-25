import 'package:flutter/material.dart';
import 'package:language_learning_app/theme/app_bar_theme.dart';
import 'package:language_learning_app/theme/button_theme.dart';
import 'package:language_learning_app/theme/color_scheme.dart';
import 'package:language_learning_app/theme/colors.dart';
import 'package:language_learning_app/theme/tab_bar_theme.dart';
import 'package:language_learning_app/theme/text_theme.dart';

final theme = ThemeData(
  colorScheme: colorScheme,
  textTheme: textTheme,
  buttonTheme: buttonTheme,
  scaffoldBackgroundColor: AppColors.bgMain,
  appBarTheme: appBarTheme,
  tabBarTheme: tabBarTheme,
);
