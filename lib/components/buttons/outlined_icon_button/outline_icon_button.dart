import 'package:flutter/material.dart';
import 'package:language_learning_app/theme/colors.dart';

class OutlineIconButtonBase extends StatelessWidget {
  const OutlineIconButtonBase({
    super.key,
    this.icon = Icons.arrow_back,
    this.onPressed,
    this.size = 28.0,
    this.iconSize = 20.0,
    this.iconColor = AppColors.white,
    this.borderWidth = 2.0,
    this.borderColor = AppColors.white,
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final double size;
  final double iconSize;
  final Color iconColor;
  final double borderWidth;
  final Color borderColor;
  final OutlinedBorder shape;

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      padding: EdgeInsets.zero,
      iconSize: iconSize,
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: iconSize,
        color: iconColor,
      ),
      style: IconButton.styleFrom(
        minimumSize: Size.zero,
        padding: EdgeInsets.all(0),
        fixedSize: Size.square(size),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        side: BorderSide(
          width: borderWidth,
          color: borderColor,
        ),
        shape: shape,
      ),
    );
  }
}
