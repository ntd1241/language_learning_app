import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton({
    super.key,
    this.text = ''
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        debugPrint('Received click');
      },
      child: Text("BUtton"),
      
    );
  }
}