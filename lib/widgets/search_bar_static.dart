import 'package:cyanase_mobile_app/env/env.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SearchBarStatic extends StatelessWidget {
  const SearchBarStatic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kpadding,
        vertical: 10.0,
      ),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: mprimary,
        // border: Border.all(
        //   width: 2,
        //   color: Colors.white,
        // ),
        borderRadius: BorderRadius.all(
          Radius.circular(kpadding),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WebsafeSvg.asset(
            "assets/icons/Iconly-Broken-Search.svg",
            color: Colors.white,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "Welcome jacqui",
                style: TextStyle(
                  fontFamily: 'MontserratExtraLight',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.white54,
                ),
              ),
              SizedBox(
                height: 3.0,
              ),
              Text(
                "Pick up from where you left off",
                style: TextStyle(
                  fontFamily: 'MontserratExtraLight',
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
