import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:language_learning_app/theme/colors.dart';

class GradientOutlineButton extends StatelessWidget {
  const GradientOutlineButton({
    super.key,
    required this.child,
    this.strokeWidth = 2.0,
    this.gradient = AppColors.graPurple,
    this.onPressed,
  });

  final Widget child;
  final double strokeWidth;
  final LinearGradient gradient;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: GradientBoxBorder(
          gradient: gradient,
          width: strokeWidth,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: TextButton.icon(
        onPressed: null,
        label: child,
        style: TextButton.styleFrom(
          minimumSize: Size.zero,
          fixedSize: Size.fromHeight(48),
          padding: EdgeInsets.symmetric(horizontal: 32),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
    );
  }
}
