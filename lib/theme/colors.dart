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

  //Colorful
  static const pink = Color(0xFFFBA3FF);

  //Gradients
  static const graPurple = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[
      Color(0xFFE42A6C),
      Color(0xFFC393FF),
    ],
  );
  static const graWhiteGhost = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      Color.fromRGBO(255, 255, 255, 0.3),
      Color(0x00FFFFFF),
    ],
  );
  static const graPink = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: <Color>[
      Color(0xFFFFF9B0),
      Color(0xFFD3FFFA),
      Color(0xFFFFC4FA),
    ],
  );
}
