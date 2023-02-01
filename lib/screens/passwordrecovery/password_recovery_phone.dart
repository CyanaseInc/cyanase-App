import 'package:cyanase_mobile_app/widgets/quick_material_button.dart';
import 'package:flutter/material.dart';
import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:form_builder_phone_field/form_builder_phone_field.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class PasswordRecoveryPhone extends StatefulWidget {
  const PasswordRecoveryPhone({super.key});

  @override
  State<PasswordRecoveryPhone> createState() => _PasswordRecoveryPhoneState();
}

class _PasswordRecoveryPhoneState extends State<PasswordRecoveryPhone> {
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
            padding: EdgeInsets.only(top: kmargin, bottom: kmargin),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(kpadding),
            ),
            child: Container(
              color: kmutedbackground,
              padding: EdgeInsets.symmetric(horizontal: kmargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      "Password Recovery",
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
                      text: "Please provide your account phone number",
                    ),
                  ),
                  SizedBox(
                    height: kmargin,
                  ),
                  FormBuilderPhoneField(
                    name: 'phone_number',
                    defaultSelectedCountryIsoCode: countrycode,
                    onChanged: ((value) {
                      print("Changed $value");
                    }),
                    iconSelector: const DropDownIcon(),
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                      hintStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: kinputText,
                      ),
                      focusColor: kregButtonColor,
                      fillColor: kregButtonColor,
                      hoverColor: kregButtonColor,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kInputBorderColor,
                          width: 1,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kInputBorderColor,
                          width: 1,
                        ),
                      ),
                    ),
                    priorityListByIsoCode: const ['UG', "KE", "TZ"],
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  SizedBox(
                    height: kmargin,
                  ),
                  QuickMaterialButton(
                    text: "Proceed",
                    pressed: () {
                      Navigator.pushNamed(context, "/verify-account");
                    },
                  ),
                  SizedBox(
                    height: kmargin / 2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/password-recovery-email");
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Use email instead",
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
