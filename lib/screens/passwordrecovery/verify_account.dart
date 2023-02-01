import 'package:cyanase_mobile_app/widgets/quick_input.dart';
import 'package:cyanase_mobile_app/widgets/quick_material_button.dart';
import 'package:flutter/material.dart';
import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';

class VerifyAccount extends StatefulWidget {
  const VerifyAccount({super.key});

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kprimary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: size.height * 0.95,
            padding: EdgeInsets.only(
              top: kmargin,
              bottom: kmargin,
            ),
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
                      "Verification email",
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
                      text:
                          "Enter the 6-digit code sent to the phone 075*******58",
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
                  QuickInput(
                    autofocus: false,
                    changed: (val) {},
                    hintText: 'Enter verification code',
                    prefixIcon: const EmailIcon(),
                  ),
                  SizedBox(
                    height: kmargin,
                  ),
                  QuickMaterialButton(
                    text: "Proceed",
                    pressed: () {
                      Navigator.pushNamed(context, "/new-password");
                    },
                  ),
                  SizedBox(
                    height: kmargin / 2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/password-recovery-phone");
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Use phone number instead",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16.0,
                            color: kprimary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kmargin,
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
