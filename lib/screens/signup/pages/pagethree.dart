import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_input.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';

enum Gender { Male, Female, Others }

class SignUpPageThree extends StatefulWidget {
  const SignUpPageThree({super.key});

  @override
  State<SignUpPageThree> createState() => _SignUpPageThreeState();
}

class _SignUpPageThreeState extends State<SignUpPageThree> {
  Gender _gender = Gender.Male;
  DateTime? _selectedDate;
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
            text: "Add your birth date and gender",
          ),
        ),
        SizedBox(
          height: kmargin,
        ),
        const QuickLabel(
          text: "Gender",
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        Padding(
          padding: EdgeInsets.only(left: kpadding),
          child: Row(
            children: [
              Column(
                children: [
                  QuickLabel(
                    text: "Male",
                    color: kprimary,
                  ),
                  Radio(
                    value: Gender.Male,
                    fillColor:
                        MaterialStateColor.resolveWith((states) => kprimary),
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                width: kpadding,
              ),
              Column(
                children: [
                  QuickLabel(
                    text: "Female",
                    color: kprimary,
                  ),
                  Radio(
                    value: Gender.Female,
                    fillColor:
                        MaterialStateColor.resolveWith((states) => kprimary),
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                width: kpadding,
              ),
              Column(
                children: [
                  QuickLabel(
                    text: "Others",
                    color: kprimary,
                  ),
                  Radio(
                    value: Gender.Others,
                    fillColor:
                        MaterialStateColor.resolveWith((states) => kprimary),
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value!;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        const QuickLabel(
          text: "Birthday",
        ),
        DatePickerWidget(
          looping: false, // default is not looping
          firstDate: DateTime.now(), //DateTime(1960),
          //  lastDate: DateTime(2002, 1, 1),
//              initialDate: DateTime.now(),// DateTime(1994),
          dateFormat:
              // "MM-dd(E)",
              "dd/MMMM/yyyy",
          //     locale: DatePicker.localeFromString('he'),
          onChange: (DateTime newDate, _) {
            setState(() {
              _selectedDate = newDate;
            });
            print(_selectedDate);
          },
          pickerTheme: DateTimePickerTheme(
            backgroundColor: Colors.transparent,
            itemTextStyle: TextStyle(color: kprimary, fontSize: 19),
            dividerColor: kprimary,
          ),
        ),
      ],
    );
  }
}
