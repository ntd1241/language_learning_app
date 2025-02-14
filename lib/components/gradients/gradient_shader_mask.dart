import 'package:flutter/material.dart';

class GradientShaderMask extends StatelessWidget {
  const GradientShaderMask({
    super.key,
    required this.child,
    required this.gradient,
  });

  final Widget child;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) {
        // Calculate the center and radius based on the widget's size
        final center = Offset(bounds.width / 2, bounds.height / 2);
        final radius =
            bounds.width > bounds.height ? bounds.width / 2 : bounds.height / 2;
        return gradient
            .createShader(Rect.fromCircle(center: center, radius: radius));
      },
      child: child,
    );
  }
}
