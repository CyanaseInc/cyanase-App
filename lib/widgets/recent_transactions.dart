import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        transaction_activity.length,
        (index) {
          TransactionModel trx = transaction_activity[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: kpadding / 2),
            child: Card(
              elevation: 0.0,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kpadding / 2,
                  vertical: kpadding / 2,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            WebsafeSvg.asset(
                              "assets/icons/Iconly-Broken-Wallet.svg",
                              color: kSecondary,
                              height: 27.0,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 6.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              trx.trxtype,
                              style: const TextStyle(
                                fontFamily: 'MontserratExtraLight',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              "UGX.${trx.trxamount.toStringAsFixed(2)}",
                              style: const TextStyle(
                                fontFamily: 'MontserratExtraLight',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              trx.status,
                              style: TextStyle(
                                fontFamily: 'MontserratExtraLight',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: kqmuted,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          trx.date,
                          style: TextStyle(
                            fontFamily: 'MontserratExtraLight',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: kSecondary,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          trx.time,
                          style: TextStyle(
                            fontFamily: 'MontserratExtraLight',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: kqmuted,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
