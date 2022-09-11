import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextWithBorder extends StatelessWidget {
  const TextWithBorder({
    Key? key,
    required this.text,
    required this.colorOutside,
    required this.colorInside,
    required this.fontSize,
  }) : super(key: key);

  final String text;
  final Color colorOutside;
  final Color colorInside;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Implement the stroke
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 7.sp
              ..color = colorOutside,
          ),
        ),
        // The text inside
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: colorInside,
          ),
        ),
      ],
    );
  }
}
