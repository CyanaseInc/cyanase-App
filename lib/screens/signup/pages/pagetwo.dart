import 'package:countrycodes_field/countrycodes.dart';
import 'package:flutter/material.dart';
import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_input.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:form_builder_phone_field/form_builder_phone_field.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:cyanase_mobile_app/models/forms.dart';

class SignUpPageTwo extends StatefulWidget {
  const SignUpPageTwo({super.key});

  @override
  State<SignUpPageTwo> createState() => _SignUpPageTwoState();
}

class _SignUpPageTwoState extends State<SignUpPageTwo> {
  String countrycode = "UG";
  void CountryChanged(country) {
    setState(() {
      countrycode = country.code;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: kpadding / 2,
        ),
        const Center(
          child: QuickLabel(
            text: "How should we contact you?",
          ),
        ),
        SizedBox(
          height: kmargin,
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        const QuickLabel(
          text: "Email",
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        QuickInput(
          autofocus: false,
          changed: (val) {},
          hintText: 'Your Email Address',
          prefixIcon: const EmailIcon(),
        ),
        SizedBox(
          height: kpadding,
        ),
        const QuickLabel(
          text: "Country",
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        CountryField(
          onSelect: (value) => CountryChanged(value),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kInputBorderColor,
              width: 1,
            ),
          ),
          textStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: kinputText,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: kInputBorderColor,
              width: 1,
            ),
          ),
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
      ],
    );
  }
}
