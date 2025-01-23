import 'package:flutter/material.dart';
import 'package:language_learning_app/theme/colors.dart';
import 'package:language_learning_app/theme/typography.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    super.key,
    required this.tabs,
    required this.tabContents,
  });

  final List<String> tabs;
  final List<Widget> tabContents;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: TabBar(
          dividerColor: Colors.transparent,
          dividerHeight: 0.0,
          indicator: BoxDecoration(
            color: Colors.transparent,
          ),
          labelColor: AppColors.primary,
          labelStyle: MyTypography.tab,
          unselectedLabelColor: AppColors.stateDeactive,
          tabs: tabs
              .map((tab) => Tab(
                    icon: Text(tab),
                    height: 32.0,
                  ))
              .toList(),
        ),
        body: TabBarView(
          children: tabContents,
        ),
      ),
    );
  }
}
