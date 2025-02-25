import 'dart:ui';

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.bottom,
  });

  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.0),
      child: AppBar(
        elevation: 0.0,
        title: title,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Center(
            child: leading,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 24),
              child: Row(children: actions ?? [])),
        ],
        centerTitle: true,
        bottom: bottom,
      ),
    );
  }

  @override
  Size get preferredSize {
    if (bottom == null) {
      return Size.fromHeight(48 + 32);
    }
    //Size + Horizontal Padding

    final double bottomHeight = bottom?.preferredSize.height ?? 0;
    return Size.fromHeight(48 +
        16 +
        32 +
        bottomHeight); // Size + Top Padding + Spacing Between + Bottom Height
  }
}
