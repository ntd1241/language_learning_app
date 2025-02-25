import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:language_learning_app/theme/colors.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.bottom,
    this.isScrolled = false,
  });

  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final bool isScrolled;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 48 + 32,
      leading: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Center(
          child: leading,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 24),
          child: Row(
            children: actions ?? [],
          ),
        ),
      ],
      title: title,
      centerTitle: true,
      bottom: bottom,
      pinned: true,
      floating: true,
      snap: true,
      backgroundColor: bottom == null ? Colors.transparent : AppColors.bgMain,
      elevation: 0,
      scrolledUnderElevation: 0,
      flexibleSpace: (!isScrolled || bottom != null)
          ? null
          : FlexibleSpaceBar(
              background: _buildBlurBackground(),
            ),
    );
  }

  Widget _buildBlurBackground() {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 21.75, sigmaY: 21.75),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.bgBlur,
            border: Border(
              bottom: BorderSide(
                color: AppColors.white.withOpacity(0.1),
                width: 1.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
