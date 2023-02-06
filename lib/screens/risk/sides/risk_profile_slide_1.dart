import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RiskProfileSlide1 extends StatelessWidget {
  const RiskProfileSlide1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kpadding / 2,
        ),
        Center(
          child: Text(
            "Risk profile",
            style: TextStyle(
              color: kInputBorderColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: kSecondary,
                width: 1,
              ),
            ),
            padding: EdgeInsets.only(
              bottom: kpadding,
              top: kpadding,
              left: kpadding / 2,
              right: kpadding / 2,
            ),
            child: Column(
              children: [
                Text(
                  "Investor risk profile",
                  style: TextStyle(
                    color: kSecondary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: kpadding / 2,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: kpadding / 2,
                      right: kpadding / 2,
                      bottom: kpadding / 2),
                  child: Text(
                    "The risk profiler is intended to grade and check how much you can accommodate an investment risk. The information you provide here is strictly for grading purposes. Thus we do not share it with any third parties or use it for any other activities.",
                    style: TextStyle(
                      color: kprimary,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
