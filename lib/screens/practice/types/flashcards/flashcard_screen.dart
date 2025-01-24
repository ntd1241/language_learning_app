import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:language_learning_app/screens/practice/types/flashcards/flashcard.dart';

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
    return AspectRatio(
      aspectRatio: 1.0,
      child: CardSwiper(
        scale: 0.95,
        backCardOffset: Offset(0, 24),
        numberOfCardsDisplayed: 3,
        duration: Duration(seconds: 5),
        cardsCount: cards.length,
        cardBuilder: (context, index, percentThresholdX, percentThresholdY) =>
            cards[index],
      ),
    );
  }
}
