// animations.dart

import 'package:flutter/material.dart';

class AnimatedScene extends StatelessWidget {
  final Animation<double> animation;
  final String imagePath;

  AnimatedScene({required this.animation, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Container(
          width: 340,
          height: 340, // Ensure it's square
          child: Stack(
            children: [
              Center(
                child: ClipRect(
                  child: Container(
                    width: 220 + animation.value, // Slightly smaller than the frame
                    height: 220 + animation.value,
                    child: Image.asset(
                     imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/sprites/frame.png',
                  width: 320 + animation.value/2,
                  height: 320 + animation.value/2,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
