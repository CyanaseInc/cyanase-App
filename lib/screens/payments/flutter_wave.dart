import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/risk_profile_model.dart';
import 'package:cyanase_mobile_app/models/notification_model.dart';
import 'package:cyanase_mobile_app/models/top_up_model.dart';
import 'package:cyanase_mobile_app/widgets/cback_button.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_material_button.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class FlutterWave extends StatefulWidget {
  const FlutterWave({super.key});

  @override
  State<FlutterWave> createState() => _FlutterWaveState();
}

class _FlutterWaveState extends State<FlutterWave> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: const SizedBox.shrink(),
        toolbarHeight: 0.3,
        backgroundColor: kprimary,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: kpadding,
                    vertical: 6.0,
                  ),
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(kpadding),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CBackButton(
                        kbgcolor: Colors.white,
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

            Padding(
              padding: EdgeInsets.symmetric(horizontal: kpadding),
              child: Text(
                "FlutterWave",
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

            ///
          ],
        ),
      ),
    );
  }
}
