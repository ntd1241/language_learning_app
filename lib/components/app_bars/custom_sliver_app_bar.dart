import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:language_learning_app/theme/colors.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar(
      {super.key,
      this.title,
      this.leading,
      this.actions,
      this.bottom,
      this.isScrolled = false,
      this.pinned = false,
      this.floating = false,
      this.snap = false,
      this.expandedHeightOffet,
      this.flexibleWidget});

  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final bool isScrolled;
  final bool pinned;
  final bool floating;
  final bool snap;
  final double? expandedHeightOffet;
  final Widget? flexibleWidget;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 48 + 32,
      expandedHeight: _expandedHeight(),
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
      title: _buildTitle(),
      centerTitle: true,
      bottom: bottom,
      pinned: pinned,
      floating: floating,
      snap: snap,
      elevation: 0,
      scrolledUnderElevation: 0,
      flexibleSpace: _buildFlexibleSpaceWidget(),
    );
  }

  Widget _buildBlurBackground() {
    if (!isScrolled) {
      return Container(
        color: Colors.transparent,
      );
    }

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

  double? _expandedHeight() {
    return expandedHeightOffet == null
        ? null
        : 48 + 32 + (expandedHeightOffet ?? 0);
  }

  Widget? _buildFlexibleSpaceWidget() {
    if (!isScrolled) {
      return flexibleWidget;
    }

    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: _buildBlurBackground(),
        ),
      ],
    );
  }

  Widget? _buildTitle() {
    if (flexibleWidget == null) return title;

    return isScrolled ? title : null;
  }
}
