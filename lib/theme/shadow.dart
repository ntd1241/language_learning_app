import "package:flutter/material.dart";

@immutable
abstract final class AppShadows {
  static const popUp = BoxShadow(
    color: Color(0x40000000),
    blurRadius: 12,
    offset: Offset(0, 8),
  );
}
