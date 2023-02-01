import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/account_type_model.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopSlide1 extends StatefulWidget {
  const TopSlide1({super.key});

  @override
  State<TopSlide1> createState() => _TopSlide1State();
}

class _TopSlide1State extends State<TopSlide1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kpadding / 2,
        ),
        Text(
          "Account type",
          style: TextStyle(
            color: kprimary,
            fontFamily: 'MontserratExtraBold',
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding),
          child: Text(
            "Choose the currency in which you would like to invest your money",
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
          padding: EdgeInsets.symmetric(horizontal: kpadding),
          child: Column(
            children: List.generate(accountTypes.length, (index) {
              AccountTypeModel accounttype = accountTypes[index];
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
                        accountTypes
                            .forEach((element) => element.isDefault = false);
                        accountTypes[index].isDefault = true;
                      });
                    }),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: accounttype.isDefault ? kprimary : Colors.white,
                        borderRadius: BorderRadius.circular(kpadding / 2),
                        border: Border.all(
                          color: accounttype.isDefault ? kprimary : kSecondary,
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
                            accounttype.accountName,
                            style: TextStyle(
                              color: accounttype.isDefault
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
                            accounttype.description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: accounttype.isDefault
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
