import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/notification_model.dart';
import 'package:cyanase_mobile_app/models/risk_profile_model.dart';
import 'package:cyanase_mobile_app/widgets/cback_button.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_material_button.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class RiskProfile extends StatefulWidget {
  const RiskProfile({super.key});

  @override
  State<RiskProfile> createState() => _RiskProfileState();
}

class _RiskProfileState extends State<RiskProfile> {
  int currentIndex = 0;
  int lastpageIndex = (RiskProfilesSides.length - 1);
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
            const Center(
              child: Text(
                "RiskProfile",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'MontserratExtraBold',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: size.height * 0.68,
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: RiskProfilesSides.length,
                    onPageChanged: (val) {
                      setState(() {
                        currentIndex = val;
                      });
                    },
                    itemBuilder: (context, index) {
                      return RiskProfilesSides[index].slide;
                    },
                  ),
                ),
              ],
            ),

            SizedBox(
              height: kmargin,
            ),

            ///
          ],
        ),
      ),
      bottomSheet: Container(
        height: 70.0,
        padding: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: kpadding,
        ),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.8,
              child: QuickMaterialButton(
                  text: currentIndex >= (RiskProfilesSides.length - 1)
                      ? "Reconcile"
                      : RiskProfilesSides[currentIndex].btnText,
                  pressed: () {
                    if (currentIndex < (RiskProfilesSides.length - 1)) {
                      var newpage = currentIndex + 1;
                      goToPage(newpage);
                      setState(() {
                        currentIndex = newpage;
                      });
                    } else {
                      // Navigator.pushNamed(context, '/home');
                      print("Reconsiled....");
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }

  void goToPage(index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 400), curve: Curves.linear);
  }
}
