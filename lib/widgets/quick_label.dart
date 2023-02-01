import 'package:flutter/material.dart';

class QuickLabel extends StatelessWidget {
  const QuickLabel({
    Key? key,
    required this.text,
    this.color = Colors.black,
  }) : super(key: key);
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Montserrat',
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
