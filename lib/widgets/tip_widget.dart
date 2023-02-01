import 'package:cyanase_mobile_app/env/env.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class TipWidget extends StatelessWidget {
  const TipWidget({
    Key? key,
    required this.title,
    required this.desc,
    required this.pressed,
  }) : super(key: key);
  final String title, desc;
  final Function pressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 6.0,
      ),
      decoration: BoxDecoration(
        color: mprimary,
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Row(
        children: [
          Material(
            color: kmprimary,
            borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            child: MaterialButton(
              onPressed: () => pressed(),
              height: 40.0,
              minWidth: 40.0,
              child: WebsafeSvg.asset(
                "assets/icons/tips.svg",
                color: kSecondary,
                height: 20.0,
              ),
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'MontserratExtraLight',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.white54,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                desc,
                style: const TextStyle(
                  fontFamily: 'MontserratExtraLight',
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
