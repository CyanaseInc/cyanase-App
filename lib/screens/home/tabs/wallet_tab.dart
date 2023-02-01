import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/chat_model.dart';
import 'package:cyanase_mobile_app/screens/topup/top_up.dart';
import 'package:cyanase_mobile_app/widgets/notification_dot.dart';
import 'package:cyanase_mobile_app/widgets/recent_transactions.dart';
import 'package:cyanase_mobile_app/widgets/search_bar_static.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WalletTab extends StatelessWidget {
  const WalletTab({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                    height: kpadding,
                  ),
                  const Center(
                    child: Text(
                      "My Wallet",
                      style: TextStyle(
                        fontFamily: 'MontserratExtraLight',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white60,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kpadding,
                  ),
                  /////ugft
                  Center(
                    child: Image.asset(
                      "assets/icons/wallet.png",
                      height: size.height * 0.12,
                    ),
                  ),
                  SizedBox(
                    height: kpadding,
                  ),
                  const Center(
                    child: Text(
                      "Account Balance",
                      style: TextStyle(
                        fontFamily: 'MontserratExtraLight',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white60,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kpadding / 2,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: kpadding,
                      vertical: 10.0,
                    ),
                    width: size.width,
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
                    child: const Center(
                      child: Text(
                        "UGX 12,300.00",
                        style: TextStyle(
                          fontFamily: 'MontserratExtraLight',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kpadding / 2,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(kpadding),
                    color: kSecondary,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const TopUp();
                        }));
                      },
                      child: const Center(
                        child: Text(
                          "Top Up",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
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
            SizedBox(
              height: kpadding / 2,
            ),
            const RecentTransactions(),
          ],
        ),
      ),
    );
  }
}
