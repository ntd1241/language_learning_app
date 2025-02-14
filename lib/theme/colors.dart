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
  static const graAqua = RadialGradient(
    // begin: Alignment(0.4566, 1.0),
    // end: Alignment(-1.11, -1.0),
    center: Alignment(0.4566, 1.0),
    radius: 1.0588,
    colors: <Color>[
      Color(0xFFFFB8E0),
      Color(0xFFBE9EFF),
      Color(0xFF88C0FC),
      Color(0xFF86FF99),
    ],
    stops: [0.0, 0.3889, 0.674, 1.0],
  );
}
