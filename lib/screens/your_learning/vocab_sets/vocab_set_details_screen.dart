import 'package:flutter/material.dart';
import 'package:language_learning_app/components/app_bars/custom_sliver_app_bar.dart';
import 'package:language_learning_app/components/buttons/outlined_icon_button/variants/small.dart';
import 'package:language_learning_app/screens/your_learning/vocab_sets/vocab_sets_list.dart';
import 'package:language_learning_app/theme/typography.dart';

class VocabSetDetailsScreen extends StatelessWidget {
  const VocabSetDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: CustomSliverAppBar(
              title: Text("Details", style: MyTypography.titleL),
              leading: SmallOutlineIconButton(
                onPressed: () => Navigator.pop(context),
              ),
              isScrolled: innerBoxIsScrolled,
              pinned: true,
              floating: false,
              snap: false,
              flexibleWidget: FlexibleSpaceBar(
                title: Text(
                  "123",
                  style: MyTypography.titleL,
                ),
              ),
              expandedHeightOffet: 80,
            ),
          ),
        ],
        body: Builder(
          builder: (context) {
            return CustomScrollView(
              slivers: [
                SliverOverlapInjector(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                ),
                VocabSetsList(),
              ],
            );
          },
        ),
      ),
    );
  }
}
