import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  AppLargeText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.size = 26,
  });
  String text;
  Color color;
  double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}
