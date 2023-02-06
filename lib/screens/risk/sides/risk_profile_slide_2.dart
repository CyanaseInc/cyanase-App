import 'package:cyanase_mobile_app/env/env.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RiskProfileSlide2 extends StatelessWidget {
  const RiskProfileSlide2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kpadding / 2,
        ),
        Center(
          child: Text(
            "Answer questions to continue",
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
        Text(
          "What are your objectives for investing?",
          style: TextStyle(
            color: kSecondary,
            fontWeight: FontWeight.w600,
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
              children: [],
            ),
          ),
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        Text(
          "What is your investment time horizon?",
          style: TextStyle(
            color: kSecondary,
            fontWeight: FontWeight.w600,
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
              children: [],
            ),
          ),
        ),
      ],
    );
  }
}
