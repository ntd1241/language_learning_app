import 'package:flutter/material.dart';
import 'package:language_learning_app/components/buttons/outlined_icon_button/outline_icon_button.dart';
import 'package:language_learning_app/theme/colors.dart';

class SmallOutlineIconButton extends StatelessWidget {
  const SmallOutlineIconButton({
    super.key,
    this.icon = Icons.arrow_back,
    this.onPressed,
  });

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlineIconButtonBase(
      icon: icon,
      onPressed: onPressed,
      size: 28.0,
      iconSize: 20.0,
      iconColor: AppColors.white,
      borderColor: AppColors.white.withOpacity(0.1),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    );
  }
}
