import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/my_goals_model.dart';
import 'package:cyanase_mobile_app/screens/newgoal/new_goal.dart';
import 'package:cyanase_mobile_app/widgets/account_static_panel.dart';
import 'package:cyanase_mobile_app/widgets/cback_button.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/quick_number_input.dart';
import 'package:cyanase_mobile_app/widgets/search_bar_static.dart';
import 'package:cyanase_mobile_app/widgets/tip_widget.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class MyGoals extends StatelessWidget {
  const MyGoals({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appbackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(kpadding / 2),
                  decoration: BoxDecoration(
                    color: kprimary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(kpadding),
                      bottomRight: Radius.circular(kpadding),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: kpadding / 2,
                      ),
                      SizedBox(
                        height: kpadding,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CBackButton(),
                          const SizedBox(
                            width: 6.0,
                          ),
                          const AccountStaticPanel(),
                          SizedBox(
                            width: kpadding / 2,
                          ),
                          const SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/profile1.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: kpadding,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "My Goals",
                            style: TextStyle(
                              fontFamily: 'MontserratExtraLight',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white60,
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(kpadding / 2),
                            color: kSecondary,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) {
                                      return const NewGoal();
                                    }),
                                  ),
                                );
                              },
                              child: const Center(
                                child: Text(
                                  "Add new goal",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: kpadding,
                      ),
                      /////ugft
                      TipWidget(
                        title: "Saving Tips",
                        desc:
                            "Don't save your money, invest it and watch it grow",
                        pressed: () {},
                      ),
                      SizedBox(
                        height: kpadding / 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: kpadding / 2,
                ),
                Column(
                  children: List.generate(mygoals.length, (index) {
                    MyGoalsModel goal = mygoals[index];
                    double percentage =
                        goal.targetamount / goal.depositedamount;
                    return Card(
                      child: Padding(
                        padding: EdgeInsets.all(kpadding / 2),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Material(
                                      color: Color(0xFFF9EEDB),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(100.0)),
                                      child: MaterialButton(
                                        onPressed: () {},
                                        height: 20.0,
                                        minWidth: 20.0,
                                        child: WebsafeSvg.asset(
                                            "assets/icons/Iconly-Broken-Add-User.svg",
                                            color: kSecondary,
                                            width: 20.0,
                                            height: 20.0),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      goal.goaltitle,
                                      style: TextStyle(
                                        fontFamily: 'MontserratExtraLight',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: kprimary,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 40.0,
                                  child: Material(
                                    borderRadius:
                                        BorderRadius.circular(kpadding / 2),
                                    color: kSecondary,
                                    child: MaterialButton(
                                      onPressed: () {
                                        OpenGoalDepositModal(context);
                                      },
                                      child: const Center(
                                        child: Text(
                                          "Deposit",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: kpadding / 2,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Color(0xFFF5F5F4),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    goal.duration,
                                    style: TextStyle(
                                      fontFamily: 'MontserratExtraLight',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: kprimary,
                                    ),
                                  ),
                                  SizedBox(
                                    height: kpadding / 2,
                                  ),
                                  Slider(
                                    value: percentage,
                                    max: 100,
                                    divisions: 5,
                                    label: percentage.round().toString(),
                                    onChanged: (double value) {},
                                  ),
                                  Row(
                                    children: [
                                      WebsafeSvg.asset(
                                        "assets/icons/Iconly-Broken-Wallet.svg",
                                        color: kSecondary,
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        "${goal.currencycode} ${goal.depositedamount.toStringAsFixed(2)}",
                                        style: TextStyle(
                                          fontFamily: 'MontserratExtraLight',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                          color: kprimary,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void OpenGoalDepositModal(context) {
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              height: size.height * 0.88,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: kpadding,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kpadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox.shrink(),
                        Material(
                          color: Colors.white,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            height: 30.0,
                            minWidth: 30.0,
                            child: const Icon(Icons.close),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: kpadding / 2,
                  ),
                  Center(
                    child: Text(
                      "Achieve your goals",
                      style: TextStyle(
                        color: kprimary,
                        fontFamily: 'MontserratExtraBold',
                        fontSize: 26.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kpadding,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
                    child: QuickNumberInput(
                      autofocus: true,
                      changed: (val) {},
                      hintText: 'Enter amount',
                      prefixIcon: const WalletIcon(),
                    ),
                  ),
                  SizedBox(
                    height: kpadding,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
                    child: Material(
                      borderRadius: BorderRadius.circular(kpadding / 2),
                      color: kprimary,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Center(
                          child: Text(
                            "Deposit",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
