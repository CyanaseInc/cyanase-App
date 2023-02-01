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
        const Center(
          child: QuickLabel(
            text: "Choose where to RiskProfile",
          ),
        ),
      ],
    );
  }
}
