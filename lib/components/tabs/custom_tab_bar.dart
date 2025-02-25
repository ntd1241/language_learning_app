import 'package:flutter/material.dart';
import 'package:language_learning_app/theme/colors.dart';
import 'package:language_learning_app/theme/typography.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({
    super.key,
    required this.tabs,
  });

  final List<String> tabs;

  static const double _paddingTop = 16.0;
  static const double _paddingBottom = 24.0;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      dividerColor: Colors.transparent,
      indicator: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16.0),
      ),
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: AppColors.white,
      labelStyle: MyTypography.tab,
      labelPadding: EdgeInsets.only(left: 0.0, right: 0.0),
      unselectedLabelColor: AppColors.stateDeactive,
      isScrollable: true,
      padding: EdgeInsets.only(
          left: 24.0, right: 24.0, top: _paddingTop, bottom: _paddingBottom),
      tabAlignment: TabAlignment.start,
      tabs: tabs
          .map(
            (tab) => Tab(
              height: 32.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 4.0,
                ),
                child: Text(tab),
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(34.0 + _paddingTop + _paddingBottom);
}
