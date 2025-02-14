import 'package:flutter/material.dart';
import 'package:language_learning_app/theme/colors.dart';
import 'package:language_learning_app/theme/typography.dart';

class ButtonContentText extends StatelessWidget {
  const ButtonContentText({
    super.key,
    required this.label,
    this.labelColor = AppColors.white,
  });

  final String label;
  final Color labelColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: MyTypography.buttonS.copyWith(
        color: labelColor,
      ),
    );
  }
}
