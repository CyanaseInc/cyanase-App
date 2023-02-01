import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:websafe_svg/websafe_svg.dart';

class NewGoalSlide1 extends StatelessWidget {
  const NewGoalSlide1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: kpadding / 2,
        ),
        WebsafeSvg.asset(
          "assets/icons/tips.svg",
          height: 100.0,
          color: kSecondary,
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        Text(
          "Goal Investing",
          style: TextStyle(
            color: kprimary,
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
