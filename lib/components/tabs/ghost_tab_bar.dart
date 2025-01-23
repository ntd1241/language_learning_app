import 'package:flutter/material.dart';

class GhostTabBar extends StatelessWidget {
  const GhostTabBar({
    super.key,
    required this.tabs,
  });

  final List<Tab> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.transparent,
            width: 2.0,
          ),
        ),
      ),
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      tabs: tabs,
    );
  }
}
