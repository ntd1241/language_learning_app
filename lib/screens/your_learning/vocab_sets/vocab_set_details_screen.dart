import 'package:flutter/material.dart';
import 'package:language_learning_app/components/app_bars/custom_sliver_app_bar.dart';
import 'package:language_learning_app/components/buttons/outlined_icon_button/variants/big.dart';
import 'package:language_learning_app/components/buttons/outlined_icon_button/variants/small.dart';
import 'package:language_learning_app/screens/your_learning/vocab_sets/vocab_sets_list.dart';
import 'package:language_learning_app/theme/typography.dart';

class VocabSetDetailsScreen extends StatelessWidget {
  const VocabSetDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            title: Text("Test 123", style: MyTypography.titleL),
            leading: SmallOutlineIconButton(
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              BigOutlineIconButton(),
            ],
          ),
          VocabSetsList(),
        ],
      ),
    );
  }
}
