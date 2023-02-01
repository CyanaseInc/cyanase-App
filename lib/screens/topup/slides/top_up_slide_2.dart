import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/screens/payments/select_payments.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_number_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopSlide2 extends StatelessWidget {
  const TopSlide2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kpadding / 2,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding),
          child: Text(
            "Make a deposit to continue in UGX",
            style: TextStyle(
              color: kprimary,
              fontFamily: 'MontserratExtraBold',
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding),
          child: Text(
            "Continue to deposit in UGX",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kInputBorderColor,
              fontSize: 14.0,
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
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SelectPayment();
                }));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: kpadding),
                child: const Center(
                  child: Text(
                    "Deposit",
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
