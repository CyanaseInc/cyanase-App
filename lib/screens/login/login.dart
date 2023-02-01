import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/check-box-model.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_input.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:cyanase_mobile_app/widgets/quick_material_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void openConfirmModal(context, size) {
    CheckBoxModel signcheck = CheckBoxModel(
      labelText: "Remember my credentials",
      isChecked: true,
    );

    showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kpadding),
      ),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              height: size.height * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(kpadding),
              ),
              padding: EdgeInsets.symmetric(horizontal: kpadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: kpadding,
                  ),
                  Center(
                    child: Container(
                      width: size.width * 0.25,
                      height: 6.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(kpadding),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kmargin,
                  ),
                  const Center(
                    child: QuickLabel(text: "Save Credentials"),
                  ),
                  SizedBox(
                    height: kpadding,
                  ),
                  const Text(
                    "Would you like to save your credentials for your next login?",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'MontserratExtraBold',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: kmargin / 2,
                  ),
                  InkWell(
                    onTap: (() {
                      setState(
                        () {
                          if (signcheck.isChecked) {
                            signcheck.isChecked = false;
                          } else {
                            signcheck.isChecked = true;
                          }
                        },
                      );
                    }),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20.0,
                          height: 20.0,
                          child: Center(
                            child: signcheck.isChecked
                                ? const CheckOpenIcon()
                                : const CheckClosedIcon(),
                          ),
                        ),
                        SizedBox(
                          width: kpadding / 2,
                        ),
                        Text(
                          signcheck.labelText,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'MontserratExtraBold',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: kmargin / 2,
                  ),
                  Center(
                    child: SizedBox(
                      width: size.width * 0.7,
                      child: QuickMaterialButton(
                          text: "No, Thanks",
                          pressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, "/home");
                          }),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: kmutedbackground,
                  padding: EdgeInsets.symmetric(horizontal: kpadding * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: kmargin,
                      ),
                      const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'MontserratExtraBold',
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: kmargin,
                      ),
                      SizedBox(
                        height: kpadding / 2,
                      ),
                      const QuickLabel(
                        text: "Username",
                      ),
                      SizedBox(
                        height: kpadding / 2,
                      ),
                      QuickInput(
                        autofocus: false,
                        changed: (val) {},
                        hintText: 'Enter your username',
                        prefixIcon: const ProfileIcon(),
                      ),
                      SizedBox(
                        height: kpadding,
                      ),
                      const QuickLabel(
                        text: "Password",
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
                        height: kmargin,
                      ),
                      QuickMaterialButton(
                          text: "Login",
                          pressed: () {
                            openConfirmModal(context, size);
                          }),
                      SizedBox(
                        height: kmargin,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, "/password-recovery-phone");
                        },
                        child: Center(
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16.0,
                              color: kregButtonColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: kpadding,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              text: "Already have account? ",
                              style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Sign Up",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.0,
                                    color: kregButtonColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: kmargin,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
