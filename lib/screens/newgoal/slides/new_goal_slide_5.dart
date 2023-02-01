import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/remider_model.dart';
import 'package:cyanase_mobile_app/screens/signup/pages/pagethree.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewGoalSlide5 extends StatefulWidget {
  const NewGoalSlide5({super.key});

  @override
  State<NewGoalSlide5> createState() => _NewGoalSlide5State();
}

class _NewGoalSlide5State extends State<NewGoalSlide5> {
  Reminder _reminder = Reminder.Monday;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: kpadding,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
          child: Row(
            children: [
              Radio(
                value: Reminder.Monday,
                fillColor: MaterialStateColor.resolveWith((states) => kprimary),
                groupValue: _reminder,
                onChanged: (value) {
                  setState(() {
                    _reminder = value!;
                  });
                },
              ),
              QuickLabel(
                text: "Monday",
                color: kprimary,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
          child: Row(
            children: [
              Radio(
                value: Reminder.Tuesday,
                fillColor: MaterialStateColor.resolveWith((states) => kprimary),
                groupValue: _reminder,
                onChanged: (value) {
                  setState(() {
                    _reminder = value!;
                  });
                },
              ),
              QuickLabel(
                text: "Tuesday",
                color: kprimary,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
          child: Row(
            children: [
              Radio(
                value: Reminder.Wednesday,
                fillColor: MaterialStateColor.resolveWith((states) => kprimary),
                groupValue: _reminder,
                onChanged: (value) {
                  setState(() {
                    _reminder = value!;
                  });
                },
              ),
              QuickLabel(
                text: "Wednesday",
                color: kprimary,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
          child: Row(
            children: [
              Radio(
                value: Reminder.Thursday,
                fillColor: MaterialStateColor.resolveWith((states) => kprimary),
                groupValue: _reminder,
                onChanged: (value) {
                  setState(() {
                    _reminder = value!;
                  });
                },
              ),
              QuickLabel(
                text: "Thursday",
                color: kprimary,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
          child: Row(
            children: [
              Radio(
                value: Reminder.Friday,
                fillColor: MaterialStateColor.resolveWith((states) => kprimary),
                groupValue: _reminder,
                onChanged: (value) {
                  setState(() {
                    _reminder = value!;
                  });
                },
              ),
              QuickLabel(
                text: "Friday",
                color: kprimary,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
          child: Row(
            children: [
              Radio(
                value: Reminder.Saturday,
                fillColor: MaterialStateColor.resolveWith((states) => kprimary),
                groupValue: _reminder,
                onChanged: (value) {
                  setState(() {
                    _reminder = value!;
                  });
                },
              ),
              QuickLabel(
                text: "Saturday",
                color: kprimary,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
          child: Row(
            children: [
              Radio(
                value: Reminder.Sunday,
                fillColor: MaterialStateColor.resolveWith((states) => kprimary),
                groupValue: _reminder,
                onChanged: (value) {
                  setState(() {
                    _reminder = value!;
                  });
                },
              ),
              QuickLabel(
                text: "Sunday",
                color: kprimary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
