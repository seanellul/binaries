// choice_buttons.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoiceButtons extends StatelessWidget {
  final List<String> options;
  final Function(String) onOptionSelected;

  ChoiceButtons({required this.options, required this.onOptionSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: options.map((option) {
        return GestureDetector(
          onTap: () {
            HapticFeedback.lightImpact();
            onOptionSelected(option);
          },
          child: Container(
            width: 150,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.white),
            ),
            child: Center(
              child: Text(
                option,
                style: GoogleFonts.pressStart2p(
                  textStyle: const TextStyle(color: Colors.white),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
