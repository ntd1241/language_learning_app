import 'package:flutter/material.dart';
import 'package:language_learning_app/theme/colors.dart';

class TransparentIconButton extends StatelessWidget {
  const TransparentIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.size = 24.0,
    this.color = AppColors.stateActive,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon, size: size, color: color),
      style: IconButton.styleFrom(
        fixedSize: Size.fromHeight(size),
        tapTargetSize: MaterialTapTargetSize.padded,
      ),
    );
  }
}
