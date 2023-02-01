import 'package:cyanase_mobile_app/env/env.dart';
import 'package:flutter/material.dart';

class QuickMaterialButton extends StatelessWidget {
  const QuickMaterialButton({
    Key? key,
    required this.pressed,
    required this.text,
  }) : super(key: key);
  final Function pressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(kpadding / 2),
      color: kregButtonColor,
      child: MaterialButton(
        onPressed: () => pressed(),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
