import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/screens/risk/risk_profile.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: kpadding,
                vertical: 10.0,
              ),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
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
            ),
            SizedBox(
              width: kpadding / 2,
            ),
            Padding(
              padding: EdgeInsets.only(right: kpadding),
              child: const SizedBox(
                width: 40.0,
                height: 40.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/profile1.png",
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kpadding),
          child: const Text(
            "Settings",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: kpadding / 2,
        ),
        ListTile(
          title: Text(
            "Account",
            style: TextStyle(
              color: kSecondary,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: const Text("Next of kin, profile, security, privacy"),
          leading: WebsafeSvg.asset(
            "assets/icons/Iconly-Broken-Profile.svg",
            height: 30.0,
          ),
          onTap: (() {}),
        ),
        ListTile(
          title: Text(
            "Investments",
            style: TextStyle(
              color: kSecondary,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: const Text("Risk profile, portifolio"),
          leading: WebsafeSvg.asset(
            "assets/icons/Iconly-Broken-Chart.svg",
            height: 30.0,
          ),
          onTap: (() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return RiskProfile();
                },
              ),
            );
          }),
        ),
        ListTile(
          title: Text(
            "Notification",
            style: TextStyle(
              color: kSecondary,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: const Text("Goals, saving tips, auto invest"),
          leading: WebsafeSvg.asset(
            "assets/icons/Iconly-Broken-Notification.svg",
            height: 30.0,
          ),
          onTap: (() {}),
        ),
        ListTile(
          title: Text(
            "FAQs",
            style: TextStyle(
              color: kSecondary,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: const Text("Learn more about us"),
          leading: WebsafeSvg.asset(
            "assets/icons/Iconly-Broken-Info-Circle.svg",
            height: 30.0,
          ),
          onTap: (() {}),
        ),
        ListTile(
          title: Text(
            "Help Center",
            style: TextStyle(
              color: kSecondary,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: const Text("Whatsapp, Email, call, social media"),
          leading: WebsafeSvg.asset(
            "assets/icons/Iconly-Broken-Call.svg",
            height: 30.0,
          ),
          onTap: (() {}),
        ),
      ],
    );
  }
}
