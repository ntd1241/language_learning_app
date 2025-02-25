import 'package:flutter/material.dart';
import 'package:language_learning_app/components/buttons/outlined_icon_button/outline_icon_button.dart';
import 'package:language_learning_app/theme/colors.dart';

class BigOutlineIconButton extends StatelessWidget {
  const BigOutlineIconButton({
    super.key,
    this.icon = Icons.add,
    this.onPressed,
  });

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlineIconButtonBase(
      icon: icon,
      onPressed: onPressed,
      size: 48.0,
      iconSize: 20.0,
      iconColor: AppColors.white,
      borderWidth: 2.0,
      borderColor: AppColors.stateDeactive,
      shape: const CircleBorder(),
    );
  }
}
