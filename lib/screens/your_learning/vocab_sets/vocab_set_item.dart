import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/your_learning/vocab_sets/vocab_set_details_screen.dart';
import 'package:language_learning_app/theme/colors.dart';
import 'package:language_learning_app/theme/typography.dart';
import 'package:percent_indicator/percent_indicator.dart';

class VocabSetItem extends StatelessWidget {
  const VocabSetItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => VocabSetDetailsScreen()));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12.0,
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: AppColors.pink,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            Expanded(
              child: Text(
                "A1 Level (Beginner) 🐣",
                style: MyTypography.titleM,
              ),
            ),
            LinearPercentIndicator(
              padding: EdgeInsets.zero,
              lineHeight: 4,
              percent: 0.5,
              linearGradient: AppColors.graPurple,
              backgroundColor: AppColors.white.withOpacity(0.1),
              barRadius: Radius.circular(100),
            ),
          ],
        ),
      ),
    );
  }
}
