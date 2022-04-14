import 'package:flutter/material.dart';
class ReuseableText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final double wordSpacing;

  const ReuseableText({
        required this.text,
       required this.size,
        required this.fontWeight,
       required this.color,
        required this.wordSpacing,
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: size,
          fontWeight: fontWeight,
          color: color,
          wordSpacing: wordSpacing,
        ),
      ),
    );
  }
}
