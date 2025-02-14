import 'package:flutter/material.dart';
import 'package:language_learning_app/components/gradients/gradient_shader_mask.dart';
import 'package:language_learning_app/theme/colors.dart';
import 'package:language_learning_app/theme/typography.dart';

class PracticeTypeSkeleton extends StatelessWidget {
  const PracticeTypeSkeleton({
    super.key,
    required this.mainContent,
    this.instruction,
  });

  final Widget mainContent;
  final Widget? instruction;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(child: mainContent),
        if (instruction != null)
          GradientShaderMask(
            gradient: AppColors.graAqua,
            child: DefaultTextStyle(
              style: MyTypography.bodyS.copyWith(
                fontWeight: FontWeight.w400,
              ),
              child: instruction!,
            ),
          ),
      ],
    );
  }
}
