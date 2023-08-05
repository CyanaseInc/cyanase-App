import 'dart:async';

import 'package:cyanase_mobile_app/bloc/main_application_bloc.dart';
import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/models/home_tab_model.dart';
import 'package:cyanase_mobile_app/widgets/icons.dart';
import 'package:cyanase_mobile_app/widgets/notification_dot.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int currentIndex = 0;

  bool showTab = true;

  late TabController _tabController;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late StreamSubscription uiSubscription;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: hometabs.length,
    );
    _tabController.addListener(() {
      setState(() {
        currentIndex = _tabController.index;
        showTab = true;
      });
    });
    ////////////// ui event calls
    final applicationBloc =
        Provider.of<MainApplicationBloc>(context, listen: false);
    uiSubscription = applicationBloc.uiCommunication.stream
        .asBroadcastStream()
        .listen((message) async {
      // print(message);
      if (message["type"] == "ui") {
        // GB
        if (message["message"] == "tab") {
          int tabindex = message["tab_index"];
          print(tabindex);
          _tabController.animateTo(tabindex);
          // setState(() {
          //   currentIndex = tabindex;
          // });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: hometabs.length,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          leading: const SizedBox.shrink(),
          toolbarHeight: 0.4,
          backgroundColor: kprimary,
        ),
        body: TabBarView(
          controller: _tabController,
          children: List.generate(hometabs.length, (index) {
            return hometabs[index].tab;    
          }),
        ),
        bottomNavigationBar: showTab
            ? Container(
                padding: EdgeInsets.only(top: kpadding / 2),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                width: size.width,
                child: TabBar(
                  controller: _tabController,
                  isScrollable: false,
                  labelColor: kprimary,
                  indicatorColor: Colors.white,
                  tabs: List.generate(
                    hometabs.length,
                    (index) {
                      HomeTabModel tab = hometabs[index];
                      Color defaultcolor = index == currentIndex
                          ? kprimary
                          : kprimary.withOpacity(0.9);
                      return Tab(
                        height: size.height * 0.075,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: index == currentIndex
                                    ? Border.all(
                                        width: 1,
                                        color: kSecondary,
                                      )
                                    : Border.all(
                                        width: 0,
                                        color: Colors.transparent,
                                      ),
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                              ),
                              padding: const EdgeInsets.all(10.0),
                              child: WebsafeSvg.asset(
                                tab.icon,
                                height: 22.0,
                                width: 22.0,
                                color: index == currentIndex
                                    ? kSecondary
                                    : kprimary,
                              ),
                            ),
                            tab.hasNotifaction
                                ? Positioned(
                                    right: 4.0,
                                    top: 4.0,
                                    child: NotificationDot(
                                      counter: tab.notifications.toString(),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            : const SizedBox.shrink(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kprimary,
          onPressed: () {
            debugPrint("Go to messages");
          },
          child: const ChatIcon(),
        ),
      ),
    );
  }
}
