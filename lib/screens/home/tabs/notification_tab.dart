import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/notification_model.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/search_bar_static.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class NotificationTab extends StatelessWidget {
  const NotificationTab({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
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
              "Notifications",
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
          Column(
            children: List.generate(notification_groups.length, (index) {
              Map not_group = notification_groups[index];
              List<CNotification> notifications = not_group["notifications"];
              return Column(
                children: [
                  not_group["group_codename"] == "today"
                      ? const SizedBox.shrink()
                      : Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: kpadding, bottom: kpadding / 2),
                            child: Text(
                              not_group["date_group"],
                              style: const TextStyle(
                                color: Color(0xFF707070),
                                fontFamily: 'Montserrat',
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                  Column(
                    children: List.generate(
                      notifications.length,
                      (index) {
                        CNotification notification = notifications[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: kpadding),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const ProfileIcon(),
                                  SizedBox(
                                    width: kpadding / 2,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        notification.not_type["type_name"],
                                        style: TextStyle(
                                          color: kSecondary,
                                          fontFamily: 'MontserratExtraLight',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 3.0,
                                      ),
                                      SizedBox(
                                        width: size.width * 0.78,
                                        child: Text(
                                          notification.not_message,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,
                                          style: const TextStyle(
                                            fontFamily: 'MontserratExtraLight',
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 2.0,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    notification.time,
                                    style: const TextStyle(
                                      fontFamily: 'MontserratExtraLight',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6.0,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: kSecondary,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          kpadding,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      notification.date,
                                      style: const TextStyle(
                                        fontFamily: 'MontserratExtraLight',
                                        fontSize: 12.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
