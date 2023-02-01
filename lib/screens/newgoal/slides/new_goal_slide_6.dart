import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_number_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewGoalSlide6 extends StatelessWidget {
  const NewGoalSlide6({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: kpadding,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "You will be required to invest ",
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: " UGX 345,567",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18.0,
                    color: kSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: " weekly or ",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18.0,
                    color: kprimary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: " UGX 745,567",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18.0,
                    color: kSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text:
                      " monthly in order to reach your saving goal of buying a house in 7 years from now.",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18.0,
                    color: kprimary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: kpadding,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
          child: QuickNumberInput(
            autofocus: true,
            changed: (val) {},
            hintText: 'Enter amount',
            prefixIcon: const WalletIcon(),
          ),
        ),
        SizedBox(
          height: kpadding,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
          child: Material(
            borderRadius: BorderRadius.circular(kpadding / 2),
            color: kSecondary,
            child: MaterialButton(
              onPressed: () {
                ///////
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: kpadding),
                child: const Center(
                  child: Text(
                    "Start depositing now",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
