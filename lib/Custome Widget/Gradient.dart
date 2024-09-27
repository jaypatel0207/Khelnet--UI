import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final Gradient gradient;
 final TextStyle style;

  GradientText({
    required this.text,
    required this.gradient,
   this.style = const TextStyle(fontSize: 15, fontWeight:FontWeight.w500),
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return gradient.createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        );
      },
      child: Text(
        text,
        style: style.copyWith(color: Colors.white), // Use any color, but it will be masked by the gradient
      ),
    );
  }
}