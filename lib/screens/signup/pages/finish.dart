import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_input.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:cyanase_mobile_app/widgets/quick_material_button.dart';
import 'package:cyanase_mobile_app/widgets/quick_number_input.dart';
import 'package:flutter/material.dart';

class SignUpPageFinish extends StatelessWidget {
  const SignUpPageFinish({super.key});
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
            text:
                "Enter the 6-digit code sent to the phone 075*******58 or walu*****@gmail.com",
          ),
        ),
        SizedBox(
          height: kmargin,
        ),
        ///////////////////////
        const QuickLabel(
          text: "Verification code",
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        QuickNumberInput(
          autofocus: false,
          changed: (val) {},
          hintText: 'Enter verification code',
          prefixIcon: const EmailIcon(),
        ),
        SizedBox(
          height: kmargin,
        ),
      ],
    );
  }
}
