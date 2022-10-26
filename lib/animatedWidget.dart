import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedWeidget extends StatelessWidget {
  const AnimatedWeidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Widget"),
      ),
      body: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            'Fazle Rabbee',
            textStyle: const TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
            speed: const Duration(milliseconds: 2000),
          ),
        ],
       
      ),
    );
  }
}
