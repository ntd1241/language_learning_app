import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:language_learning_app/components/buttons/content_styles/text.dart';
import 'package:language_learning_app/components/buttons/gradient_outline.dart';
import 'package:language_learning_app/components/headers/index.dart';
import 'package:language_learning_app/screens/practice/types/flashcards/flashcard_screen.dart';
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
            label: "Flashcards",
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
        decoration: BoxDecoration(
          border: GradientBoxBorder(
            gradient: AppColors.graWhiteGhost,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        width: double.infinity,
        height: double.infinity,
        child: FlashCardScreenV2(),
      ),
    );
  }
}
