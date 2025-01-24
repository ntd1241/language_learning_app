import "package:flutter/material.dart";
import "package:language_learning_app/theme/colors.dart";

@immutable
abstract final class MyTypography {
  //Title & Heading
  static const titleL = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    height: 24 / 18,
  );
  static const titleM = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 24 / 16,
  );
  static const h5 = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.w600,
    fontSize: 24,
    height: 32 / 24,
  );
  static const h6 = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.w600,
    fontSize: 20,
    height: 24 / 20,
  );

  //Content
  static const tab = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    height: 24 / 14,
  );
  static const captionL = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 16 / 12,
  );
  static const bodyS = TextStyle(
    color: AppColors.white,
    fontSize: 13,
    height: 24 / 13,
  );

  //Buttons
  static const buttonS = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    height: 24 / 14,
  );

  //
}
