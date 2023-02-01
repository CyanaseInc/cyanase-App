import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/signup_walkthrough.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_input.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:cyanase_mobile_app/widgets/quick_material_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int currentIndex = 0;
  int lastpageIndex = (signuppage.length - 1);
  PageController pageController = PageController(initialPage: 0);

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
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'MontserratExtraBold',
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.58,
                            child: PageView.builder(
                              controller: pageController,
                              itemCount: signuppage.length,
                              onPageChanged: (val) {
                                setState(() {
                                  currentIndex = val;
                                });
                              },
                              itemBuilder: (context, index) {
                                return signuppage[index];
                              },
                            ),
                          ),
                        ],
                      ),
                      QuickMaterialButton(
                          text: currentIndex >= (signuppage.length - 1)
                              ? "Create Account"
                              : "Next",
                          pressed: () {
                            if (currentIndex < (signuppage.length - 1)) {
                              var newpage = currentIndex + 1;
                              goToPage(newpage);
                              setState(() {
                                currentIndex = newpage;
                              });
                            } else {
                              Navigator.pushNamed(context, '/home');
                            }
                          }),
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

  void goToPage(index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 400), curve: Curves.linear);
  }
}
