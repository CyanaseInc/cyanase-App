import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_input.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewGoalSlide2 extends StatelessWidget {
  const NewGoalSlide2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: kpadding,
          ),
          const QuickLabel(
            text: "What do you want to achieve?",
          ),
          SizedBox(
            height: kpadding,
          ),
          QuickInput(
            autofocus: true,
            changed: (val) {},
            hintText: 'Build a mansion',
            prefixIcon: const EditIcon(),
          ),
          SizedBox(
            height: kpadding,
          ),
          const QuickLabel(
            text: "How long do you wish to accomplish your goal?",
          ),
          SizedBox(
            height: kpadding,
          ),
          QuickInput(
            autofocus: false,
            changed: (val) {},
            hintText: '5 years',
            prefixIcon: const TimeIcon(),
          ),
        ],
      ),
    );
  }
}
