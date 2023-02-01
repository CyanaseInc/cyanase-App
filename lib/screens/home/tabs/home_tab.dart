import 'package:cyanase_mobile_app/bloc/main_application_bloc.dart';
import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/chat_model.dart';
import 'package:cyanase_mobile_app/screens/risk/risk_profile.dart';
import 'package:cyanase_mobile_app/screens/mygoals/my_goals.dart';
import 'package:cyanase_mobile_app/widgets/notification_dot.dart';
import 'package:cyanase_mobile_app/widgets/recent_transactions.dart';
import 'package:cyanase_mobile_app/widgets/search_bar_static.dart';
import 'package:cyanase_mobile_app/widgets/tip_widget.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  //////////////////////////////////////
  bool isSwitched = true;
  var textValue = 'ON';
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = "ON";
      });
    } else {
      setState(() {
        isSwitched = false;
        textValue = "OFF";
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final applicationbloc = Provider.of<MainApplicationBloc>(context);
    return Container(
      color: appbackground,
      height: size.height,
      child: SingleChildScrollView(
        child: Column(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SearchBarStatic(),
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
                    height: kpadding / 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Nov, 5",
                            style: TextStyle(
                              fontFamily: 'MontserratExtraLight',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.white54,
                            ),
                          ),
                          Text(
                            "Your Statistics",
                            style: TextStyle(
                              fontFamily: 'MontserratExtraLight',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Material(
                            color: mprimary,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50.0)),
                            child: MaterialButton(
                              onPressed: () {
                                applicationbloc.sendMessage(
                                  {
                                    "type": "ui",
                                    "message": "tab",
                                    "tab_index": 1,
                                  },
                                );
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: ((context) {
                                //       return const Deposit();
                                //     }),
                                //   ),
                                // );
                              },
                              height: 30.0,
                              minWidth: 30.0,
                              child: WebsafeSvg.asset(
                                "assets/icons/Iconly-Broken-Wallet.svg",
                                color: kSecondary,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: kpadding / 2,
                          ),
                          Material(
                            color: mprimary,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50.0)),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) {
                                      return const MyGoals();
                                    }),
                                  ),
                                );
                              },
                              height: 30.0,
                              minWidth: 30.0,
                              child: WebsafeSvg.asset(
                                "assets/icons/Iconly-Broken-Add-User.svg",
                                color: kSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kpadding / 2,
                  ),
                  Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(kpadding / 2),
                        ),
                        color: mprimary,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: kpadding / 2,
                            vertical: kpadding / 2,
                          ),
                          child: Column(
                            children: [
                              WebsafeSvg.asset(
                                "assets/icons/Iconly-Broken-Wallet.svg",
                                color: kSecondary,
                                height: 30.0,
                              ),
                              SizedBox(
                                height: kpadding / 3,
                              ),
                              const Text(
                                "Deposit",
                                style: TextStyle(
                                  fontFamily: 'MontserratExtraLight',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white54,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              const Text(
                                "UGX.23300.00",
                                style: TextStyle(
                                  fontFamily: 'MontserratExtraLight',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              // Container(
                              //   padding: EdgeInsets.all(30.0),
                              //   color: Colors.blue,
                              //   child: Image.asset(
                              //     "assets/icons/down-trend.png",
                              //     width: 50.0,
                              //     height: 50.0,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.61,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(kpadding / 2),
                          ),
                          color: mprimary,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: kpadding / 2,
                              vertical: kpadding / 2,
                            ),
                            child: Column(
                              children: [
                                WebsafeSvg.asset(
                                  "assets/icons/Iconly-Broken-Bag.svg",
                                  color: kSecondary,
                                  height: 30.0,
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                const Text(
                                  "Networth",
                                  style: TextStyle(
                                    fontFamily: 'MontserratExtraLight',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white54,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                const Text(
                                  "UGX.763300.00",
                                  style: TextStyle(
                                    fontFamily: 'MontserratExtraLight',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: kpadding / 2,
                  ),
                  TipWidget(
                    title: "Saving Tips",
                    desc: "Don't save your money, invest it and watch it grow",
                    pressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: kpadding / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 65.0,
                  width: size.width * 0.6,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: recent_chats.length,
                    itemBuilder: (BuildContext context, int index) {
                      ChatModel chat = recent_chats[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 6.5,
                        ),
                        child: Stack(
                          children: [
                            SizedBox(
                              width: 55.0,
                              height: 55.0,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  chat.avatar,
                                ),
                              ),
                            ),
                            chat.hasNotifications
                                ? Positioned(
                                    right: 0.0,
                                    top: 4.0,
                                    child: NotificationDot(
                                      counter: chat.notification.toString(),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Auto Save",
                          style: TextStyle(
                            fontFamily: 'MontserratExtraLight',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          textValue,
                          style: const TextStyle(
                            fontFamily: 'MontserratExtraLight',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(2.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: SizedBox(
                        height: 30.0,
                        child: Switch(
                          onChanged: toggleSwitch,
                          value: isSwitched,
                          activeColor: kSecondary,
                          activeTrackColor: const Color(0xFFEBEBEA),
                          inactiveThumbColor: kmprimary,
                          inactiveTrackColor: mprimary,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Activity",
                    style: TextStyle(
                      fontFamily: 'MontserratExtraLight',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: kqmuted,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const RecentTransactions(),
          ],
        ),
      ),
    );
  }
}
