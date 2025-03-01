import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:language_learning_app/theme/typography.dart';

class CustomFlexibleSpaceBar extends StatelessWidget {
  const CustomFlexibleSpaceBar({
    super.key,
    this.isExpanded = false,
  });

  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return isExpanded ? SizedBox() : Text("TEST", style: MyTypography.titleL);
  }
}
