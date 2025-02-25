import 'package:flutter/material.dart';
import 'package:language_learning_app/components/app_bars/custom_sliver_app_bar.dart';
import 'package:language_learning_app/components/buttons/outlined_icon_button/variants/big.dart';
import 'package:language_learning_app/components/buttons/outlined_icon_button/variants/small.dart';
import 'package:language_learning_app/components/tabs/custom_tab_bar.dart';
import 'package:language_learning_app/screens/your_learning/vocab_sets/vocab_sets_list.dart';
import 'package:language_learning_app/theme/typography.dart';

class YourLearningScreen extends StatelessWidget {
  const YourLearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: CustomSliverAppBar(
                title: Text("Your Learning", style: MyTypography.titleL),
                leading: SmallOutlineIconButton(),
                actions: [
                  BigOutlineIconButton(),
                ],
                isScrolled: innerBoxIsScrolled,
                bottom: CustomTabBar(tabs: ["Vocab Sets", "TEST"]),
              ),
            ),
          ],
          body: TabBarView(
            children: [
              Builder(
                builder: (context) {
                  return CustomScrollView(
                    key: PageStorageKey("Vocab Sets"),
                    slivers: [
                      SliverOverlapInjector(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),
                      ),
                      VocabSetsList(),
                    ],
                  );
                },
              ),
              Builder(
                builder: (context) {
                  return CustomScrollView(
                    key: PageStorageKey("Vocab Sets"),
                    slivers: [
                      SliverOverlapInjector(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),
                      ),
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              color: Colors.red,
                            ),
                            Container(
                              height: 200,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
