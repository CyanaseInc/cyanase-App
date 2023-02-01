import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/new_goal_model.dart';
import 'package:cyanase_mobile_app/models/notification_model.dart';
import 'package:cyanase_mobile_app/widgets/cback_button.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_label.dart';
import 'package:cyanase_mobile_app/widgets/quick_material_button.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class NewGoal extends StatefulWidget {
  const NewGoal({super.key});

  @override
  State<NewGoal> createState() => _NewGoalState();
}

class _NewGoalState extends State<NewGoal> {
  int currentIndex = 0;
  int lastpageIndex = (NewGoalsSides.length - 1);
  PageController pageController = PageController(initialPage: 0);
  String title = "New Goal";
  String desc = "Let your dreams come true by investing";
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
            Center(
              child: Text(
                title,
                style: TextStyle(
                  color: kprimary,
                  fontFamily: 'MontserratExtraBold',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: kpadding / 2,
            ),
            Center(
              child: QuickLabel(
                text: desc,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: size.height * 0.68,
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: NewGoalsSides.length,
                    onPageChanged: (val) {
                      NewGoalSlideModel slide = NewGoalsSides[val];
                      setState(() {
                        currentIndex = val;
                        title = slide.title;
                        desc = slide.desc;
                      });
                    },
                    itemBuilder: (context, index) {
                      return NewGoalsSides[index].slide;
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
          horizontal: kpadding / 2,
        ),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            currentIndex > 0
                ? SizedBox(
                    width: currentIndex == (NewGoalsSides.length - 1)
                        ? size.width * 0.90
                        : size.width * 0.40,
                    child: QuickMaterialButton(
                        text: "Previous",
                        pressed: () {
                          if (currentIndex > 0) {
                            var newpage = (currentIndex - 1);
                            // print(newpage);
                            goToPage(newpage);
                            setState(() {
                              currentIndex = newpage;
                            });
                          } else {
                            // Navigator.pushNamed(context, '/home');
                            print("Goal created....");
                          }
                        }),
                  )
                : const SizedBox.shrink(),
            currentIndex == (NewGoalsSides.length - 1)
                ? const SizedBox.shrink()
                : SizedBox(
                    width: currentIndex == 0
                        ? size.width * 0.90
                        : size.width * 0.40,
                    child: QuickMaterialButton(
                        text: currentIndex >= (NewGoalsSides.length - 1)
                            ? "Finish"
                            : NewGoalsSides[currentIndex].btnText,
                        pressed: () {
                          if (currentIndex < (NewGoalsSides.length - 1)) {
                            var newpage = currentIndex + 1;
                            goToPage(newpage);
                            setState(() {
                              currentIndex = newpage;
                            });
                          } else {
                            // Navigator.pushNamed(context, '/home');
                            print("Goal created....");
                          }
                        }),
                  ),
          ],
        ),
      ),
    );
  }

  void OpenGoalDepositModal(context) {}

  void goToPage(index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 400), curve: Curves.linear);
  }
}
