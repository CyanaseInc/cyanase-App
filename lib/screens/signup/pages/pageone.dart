import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_input.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:flutter/cupertino.dart';

class SignUpPageOne extends StatelessWidget {
  const SignUpPageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: kpadding / 2,
        ),
        const Center(
          child: QuickLabel(
            text: "What are your names?",
          ),
        ),
        SizedBox(
          height: kmargin,
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        const QuickLabel(
          text: "First Name",
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        QuickInput(
          autofocus: false,
          changed: (val) {},
          hintText: 'Your First Name',
          prefixIcon: const ProfileIcon(),
        ),
        SizedBox(
          height: kpadding,
        ),
        const QuickLabel(
          text: "Last Name",
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        QuickInput(
          autofocus: false,
          changed: (val) {},
          hintText: 'Your Last Name',
          prefixIcon: const ProfileIcon(),
        ),
      ],
    );
  }
}
