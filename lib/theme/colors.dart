import "package:flutter/material.dart";

@immutable
abstract final class AppColors {

  //Backgrounds
  static const bgMain = Color(0xFF181A20);
  static const bgLighter = Color(0xFF262A34);

  //Primitives
  static const white = Color(0xFFFFFFFF);
  static const primary = Color(0xFF246BFD);
  static const secondary = Color(0xFFC25FFF);

  //States
  static const stateActive = Color(0xFFFFFFFF);
  static const stateDeactive = Color(0xFF5E6272);
  static const stateDeactiveDarker = Color(0xFF3A3D46);

  //Gradients
  static const graPurple = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[
      Color(0xFFE42A6C),
      Color(0xFFC393FF)
    ]
  );
}