import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/deposit_type_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewGoalSlide3 extends StatefulWidget {
  const NewGoalSlide3({super.key});

  @override
  State<NewGoalSlide3> createState() => _NewGoalSlide3State();
}

class _NewGoalSlide3State extends State<NewGoalSlide3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: kpadding,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding),
          child: Column(
            children: List.generate(deposittypes.length, (index) {
              DepositTypeModel deposittype = deposittypes[index];
              ////////
              return Padding(
                padding: EdgeInsets.only(
                  bottom: kpadding,
                ),
                child: Material(
                  child: InkWell(
                    onTap: (() {
                      //  reset state
                      setState(() {
                        deposittypes
                            .forEach((element) => element.isChecked = false);
                        deposittypes[index].isChecked = true;
                      });
                    }),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: deposittype.isChecked ? kprimary : Colors.white,
                        borderRadius: BorderRadius.circular(kpadding / 2),
                        border: Border.all(
                          color: deposittype.isChecked ? kprimary : kSecondary,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.only(
                        bottom: kpadding,
                        top: kpadding,
                        left: kpadding / 2,
                        right: kpadding / 2,
                      ),
                      child: Column(
                        children: [
                          Text(
                            deposittype.labelText,
                            style: TextStyle(
                              color: deposittype.isChecked
                                  ? Colors.white
                                  : kprimary,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: kpadding / 2,
                          ),
                          Text(
                            deposittype.desc,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: deposittype.isChecked
                                  ? Colors.white
                                  : kprimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
