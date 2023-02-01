import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_input.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:cyanase_mobile_app/widgets/quick_material_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  String countrycode = "UG";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kprimary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: size.height * 0.96,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(kpadding),
            ),
            child: Container(
              color: kmutedbackground,
              padding: EdgeInsets.symmetric(horizontal: kpadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      "New password",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'MontserratExtraBold',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kpadding / 2,
                  ),
                  const Center(
                    child: QuickLabel(
                      text: "Create new password",
                    ),
                  ),
                  SizedBox(
                    height: kmargin,
                  ),
                  SizedBox(
                    height: kpadding / 2,
                  ),
                  const QuickLabel(
                    text: "New password",
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
                  SizedBox(
                    height: kmargin,
                  ),
                  QuickMaterialButton(
                    text: "Confirm",
                    pressed: () {
                      Navigator.pushNamed(context, "/");
                    },
                  ),
                  SizedBox(
                    height: kmargin / 2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/");
                    },
                    child: Center(
                      child: Text(
                        "Back to Login",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16.0,
                          color: kSecondary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
