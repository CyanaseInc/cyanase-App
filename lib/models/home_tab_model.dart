import 'package:cyanase_mobile_app/screens/home/tabs/home_tab.dart';
import 'package:cyanase_mobile_app/screens/home/tabs/notification_tab.dart';
import 'package:cyanase_mobile_app/screens/home/tabs/settings_tab.dart';
import 'package:cyanase_mobile_app/screens/home/tabs/wallet_tab.dart';
import 'package:flutter/material.dart';

class HomeTabModel {
  late final String title, icon;
  final Widget tab;
  final bool hasNotifaction;
  final int notifications;
  //////////////////////////////
  HomeTabModel({
    required this.hasNotifaction,
    required this.notifications,
    required this.tab,
    required this.icon,
    required this.title,
  });
}

List<HomeTabModel> hometabs = [
  HomeTabModel(
    title: "Home",
    tab: const HomeTab(),
    icon: "assets/icons/Iconly-Broken-Home.svg",
    hasNotifaction: false,
    notifications: 0,
  ),
  HomeTabModel(
    title: "Wallet",
    tab: const WalletTab(),
    icon: "assets/icons/Iconly-Broken-Wallet.svg",
    hasNotifaction: false,
    notifications: 0,
  ),
  HomeTabModel(
    title: "Notifications",
    tab: const NotificationTab(),
    icon: "assets/icons/Iconly-Broken-Notification.svg",
    hasNotifaction: true,
    notifications: 1,
  ),
  HomeTabModel(
    title: "Settings",
    tab: const SettingsTab(),
    icon: "assets/icons/Iconly-Broken-Setting.svg",
    hasNotifaction: false,
    notifications: 0,
  ),
];
