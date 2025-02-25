import 'package:flutter/material.dart';
import 'package:language_learning_app/theme/colors.dart';
import 'package:language_learning_app/theme/typography.dart';

final tabBarTheme = TabBarTheme(
  indicator: BoxDecoration(
    color: AppColors.primary,
    borderRadius: BorderRadius.circular(16.0),
  ),
  labelColor: AppColors.white,
  labelStyle: MyTypography.tab,
);
