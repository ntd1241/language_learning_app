import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:language_learning_app/components/buttons/icon_button.dart';
import 'package:language_learning_app/components/tabs/bottom_tab_bar.dart';
import 'package:language_learning_app/theme/shadow.dart';
import 'package:language_learning_app/theme/typography.dart';
import 'package:language_learning_app/theme/colors.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class FlashCard extends StatelessWidget {
  const FlashCard({
    super.key,
    required this.word,
    this.label,
    this.ipa,
    required this.meaning,
    this.definition,
    this.example,
    this.controller,
  });

  final String word;
  final String? label;
  final String? ipa;
  final String meaning;
  final String? definition;
  final String? example;
  final FlipCardController? controller;

  List<String> getTabs() {
    List<String> tabs = ["Meaning"];

    if (definition != null) {
      tabs.add("Definition");
    }

    if (example != null) {
      tabs.add("Example");
    }

    return tabs;
  }

  List<Widget> getTabContents() {
    List<Widget> contents = [
      Center(
        child: Text(
          meaning,
          textAlign: TextAlign.center,
          style: MyTypography.h5,
        ),
      ),
    ];

    if (definition != null) {
      contents.add(
        Center(
          child: Text(
            definition!,
            textAlign: TextAlign.center,
            style: MyTypography.h6,
          ),
        ),
      );
    }

    if (example != null) {
      contents.add(
        Center(
          child: Text(
            example!,
            textAlign: TextAlign.center,
            style: MyTypography.h6,
          ),
        ),
      );
    }

    return contents;
  }

  Widget wordListName() {
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Icon(
                TablerIcons.archive_filled,
                size: 16.0,
                color: AppColors.pink,
              ),
            ),
          ),
          TextSpan(
            text: "Vocabulary",
            style: MyTypography.captionL.copyWith(
              color: AppColors.pink,
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: FlipCard(
        controller: controller,
        fill: Fill.fillBack,
        side: CardSide.FRONT,
        speed: 5000,
        front: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColors.bgLighter,
              border: GradientBoxBorder(
                gradient: AppColors.graPink.withOpacity(0.4),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                AppShadows.popUp,
              ]),
          child: Stack(
            children: [
              Positioned(
                top: 20.0,
                left: 16.0,
                child: wordListName(),
              ),
              Positioned(
                top: 4.0,
                right: 4.0,
                child: TransparentIconButton(
                  icon: TablerIcons.volume,
                  color: AppColors.stateDeactive,
                  onPressed: () {},
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(16, 72, 16, 32),
                child: Column(
                  spacing: 4.0,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      word,
                      style: MyTypography.h5,
                    ),
                    if (ipa != null)
                      Text(
                        ipa!,
                        style: MyTypography.bodyS.copyWith(
                          color: AppColors.stateDeactive,
                        ),
                      ),
                    if (label != null)
                      Text(
                        label!.toUpperCase(),
                        style: MyTypography.bodyS.copyWith(
                          color: AppColors.stateDeactive,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        back: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.bgLighter,
            border: GradientBoxBorder(
              gradient: AppColors.graPink.withOpacity(0.4),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 20.0,
                left: 16.0,
                child: wordListName(),
              ),
              Positioned(
                top: 32.0,
                bottom: 16.0,
                right: 16.0,
                left: 16.0,
                child: BottomTabBar(
                  tabs: getTabs(),
                  tabContents: getTabContents(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
