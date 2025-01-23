import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:language_learning_app/components/buttons/content_styles/text.dart';
import 'package:language_learning_app/components/buttons/gradient_outline.dart';
import 'package:language_learning_app/components/headers/index.dart';
import 'package:language_learning_app/screens/practice/types/flashcards/flashcard.dart';
import 'package:language_learning_app/theme/colors.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgMain,
      appBar: Header(
        titleWidget: GradientOutlineButton(
          child: ButtonContentText(
            label: "Multiple choice",
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 88),
        decoration: BoxDecoration(
          border: GradientBoxBorder(
            gradient: AppColors.graWhiteGhost,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(24),
              child: FlashCard(
                word: "hello",
                label: "verb",
                ipa: "/hɛˈloʊ/",
                meaning: "chao buoi sang",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
