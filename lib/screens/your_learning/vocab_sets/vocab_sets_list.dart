import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/your_learning/vocab_sets/vocab_set_item.dart';

class VocabSetsList extends StatelessWidget {
  const VocabSetsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          mainAxisExtent: 192,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) => VocabSetItem(),
          childCount: 3,
        ),
      ),
    );
  }
}
