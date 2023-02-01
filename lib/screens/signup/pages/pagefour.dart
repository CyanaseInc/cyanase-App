import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_input.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:flutter/cupertino.dart';

class SignUpPageFour extends StatelessWidget {
  const SignUpPageFour({super.key});
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
            text: "Create password",
          ),
        ),
        SizedBox(
          height: kmargin,
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        const QuickLabel(
          text: "Create password",
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        QuickInput(
          autofocus: false,
          isObsecure: true,
          changed: (val) {},
          hintText: 'Enter your password',
          prefixIcon: const LockIcon(),
        ),
        SizedBox(
          height: kpadding,
        ),
        const QuickLabel(
          text: "Confirm password",
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        QuickInput(
          autofocus: false,
          isObsecure: true,
          changed: (val) {},
          hintText: 'Repeat password',
          prefixIcon: const LockIcon(),
        ),
      ],
    );
  }
}
