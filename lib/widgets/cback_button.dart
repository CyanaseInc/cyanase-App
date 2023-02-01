import 'package:cyanase_mobile_app/env/env.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class CBackButton extends StatelessWidget {
  CBackButton({
    Key? key,
    this.ktextcolor = const Color(0xFFF6A92E),
    this.kbgcolor = const Color(0xFF53597D),
  }) : super(key: key);
  Color ktextcolor, kbgcolor;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: kbgcolor,
      borderRadius: const BorderRadius.all(Radius.circular(50.0)),
      child: MaterialButton(
        onPressed: () {
          Navigator.pop(context);
        },
        height: 40.0,
        minWidth: 40.0,
        child: WebsafeSvg.asset(
          "assets/icons/Iconly-Light-outline-Arrow-left.svg",
          color: ktextcolor,
          height: 20.0,
        ),
      ),
    );
  }
}
