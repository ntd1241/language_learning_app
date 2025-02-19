import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:language_learning_app/screens/practice/types/flashcards/flashcard.dart';
import 'package:language_learning_app/screens/practice/types/skeleton.dart';

class FlashCardScreen extends StatelessWidget {
  const FlashCardScreen({
    super.key,
    this.cards = const [
      FlashCard(
        key: ValueKey("hello"),
        word: "hello",
        label: "verb",
        ipa: "/hɛˈloʊ/",
        meaning: "chao buoi sang",
        definition: "used as a greeting or to begin a conversation",
      ),
      FlashCard(
        key: ValueKey("goodbye"),
        word: "goodbye",
        label: "verb",
        ipa: "/ɡʊdˈbaɪ/",
        meaning: "tam biet",
      ),
      FlashCard(
        key: ValueKey("morning"),
        word: "good morning",
        label: "verb",
        ipa: "/ɡʊd ˈmɔːrnɪŋ/",
        meaning: "chao buoi sang",
      ),
      FlashCard(
        key: ValueKey("afternoon"),
        word: "good afternoon",
        label: "verb",
        ipa: "/ɡʊd ˌæftərˈnuːn/",
        meaning: "chao buoi chieu",
      ),
      FlashCard(
        key: ValueKey("evening"),
        word: "good evening",
        label: "verb",
        ipa: "/ɡʊd ˈiːvnɪŋ/",
        meaning: "chao buoi toi",
      ),
      FlashCard(
        key: ValueKey("night"),
        word: "good night",
        label: "verb",
        ipa: "/ɡʊd ˈnaɪt/",
        meaning: "chuc ngu ngon",
      ),
    ],
  });

  final List<FlashCard> cards;

  @override
  Widget build(BuildContext context) {
    return PracticeTypeSkeleton(
      mainContent: Center(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: CardSwiper(
            scale: 0.95,
            backCardOffset: Offset(0, 24),
            numberOfCardsDisplayed: 3,
            duration: Duration(seconds: 5),
            cardsCount: cards.length,
            cardBuilder:
                (context, index, percentThresholdX, percentThresholdY) =>
                    cards[index],
          ),
        ),
      ),
      instruction: Text("Touch card to flip"),
    );
  }
}

class FlashCardScreenV2 extends StatefulWidget {
  const FlashCardScreenV2({
    super.key,
    this.cards = const [
      FlashCard(
        key: ValueKey("hello"),
        word: "hello",
        label: "verb",
        ipa: "/hɛˈloʊ/",
        meaning: "chao buoi sang",
        definition: "used as a greeting or to begin a conversation",
      ),
      FlashCard(
        key: ValueKey("goodbye"),
        word: "goodbye",
        label: "verb",
        ipa: "/ɡʊdˈbaɪ/",
        meaning: "tam biet",
      ),
      FlashCard(
        key: ValueKey("morning"),
        word: "good morning",
        label: "verb",
        ipa: "/ɡʊd ˈmɔːrnɪŋ/",
        meaning: "chao buoi sang",
      ),
      FlashCard(
        key: ValueKey("afternoon"),
        word: "good afternoon",
        label: "verb",
        ipa: "/ɡʊd ˌæftərˈnuːn/",
        meaning: "chao buoi chieu",
      ),
      FlashCard(
        key: ValueKey("evening"),
        word: "good evening",
        label: "verb",
        ipa: "/ɡʊd ˈiːvnɪŋ/",
        meaning: "chao buoi toi",
      ),
      FlashCard(
        key: ValueKey("night"),
        word: "good night",
        label: "verb",
        ipa: "/ɡʊd ˈnaɪt/",
        meaning: "chuc ngu ngon",
      ),
    ],
  });

  final List<FlashCard> cards;

  @override
  State<FlashCardScreenV2> createState() => _FlashCardScreenV2State();
}

class _FlashCardScreenV2State extends State<FlashCardScreenV2> {
  late final FlipCardController _flipCardController = FlipCardController();

  List<FlashCard> cards = [];

  Future<void> onLoad() async {
    await _flipCardController.skew(
      0.1,
      duration: Duration(seconds: 10),
    );
    await _flipCardController.skew(
      0,
      duration: Duration(seconds: 20),
    );
  }

  @override
  void initState() {
    super.initState();
    cards = [
      FlashCard(
        controller: _flipCardController,
        word: "TEST",
        meaning: "TEST",
      ),
      ...widget.cards
    ];
    WidgetsBinding.instance.addPostFrameCallback((_) => onLoad());
  }

  @override
  Widget build(BuildContext context) {
    return PracticeTypeSkeleton(
      mainContent: Center(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: CardSwiper(
            scale: 0.95,
            backCardOffset: Offset(0, 24),
            numberOfCardsDisplayed: 3,
            duration: Duration(seconds: 5),
            cardsCount: cards.length,
            cardBuilder:
                (context, index, percentThresholdX, percentThresholdY) =>
                    cards[index],
          ),
        ),
      ),
      instruction: Text("Touch card to flip"),
    );
  }
}
