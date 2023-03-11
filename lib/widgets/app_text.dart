import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  AppText({
    super.key,
    required this.text,
    this.color = Colors.black87,
    this.size = 16,
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
        color: color,
      ),
    );
  }
}
