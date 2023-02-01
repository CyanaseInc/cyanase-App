import 'package:cyanase_mobile_app/env/env.dart';
import 'package:flutter/material.dart';

class NotificationDot extends StatelessWidget {
  const NotificationDot({
    Key? key,
    required this.counter,
  }) : super(key: key);

  final String counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
        color: kcloudColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Text(
        counter,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10.0,
        ),
      ),
    );
  }
}
