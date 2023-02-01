import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Broken-Profile.svg",
    );
  }
}

class LockIcon extends StatelessWidget {
  const LockIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Broken-Lock.svg",
    );
  }
}

class CheckOpenIcon extends StatelessWidget {
  const CheckOpenIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Broken-Tick-Square-open.svg",
      height: 24.0,
      width: 24.0,
    );
  }
}

class CheckClosedIcon extends StatelessWidget {
  const CheckClosedIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Broken-Tick-square-closed.svg",
      height: 16.0,
      width: 16.0,
    );
  }
}

class EyeOpenIcon extends StatelessWidget {
  const EyeOpenIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Broken-Show.svg",
    );
  }
}

class EyeClosedIcon extends StatelessWidget {
  const EyeClosedIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Broken-Hide.svg",
    );
  }
}

class EmailIcon extends StatelessWidget {
  const EmailIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Broken-Message.svg",
    );
  }
}

class DropDownIcon extends StatelessWidget {
  const DropDownIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Light-outline-Arrow-Down.svg",
    );
  }
}

/// tab icons
class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Broken-Home.svg",
    );
  }
}

class WalletIcon extends StatelessWidget {
  const WalletIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Broken-Wallet.svg",
    );
  }
}

class EditIcon extends StatelessWidget {
  const EditIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Broken-Edit.svg",
    );
  }
}

class TimeIcon extends StatelessWidget {
  const TimeIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Light-Time-Circle.svg",
    );
  }
}

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Broken-Notification.svg",
    );
  }
}

class SettingsIcon extends StatelessWidget {
  const SettingsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Broken-Setting.svg",
    );
  }
}

class ChatIcon extends StatelessWidget {
  const ChatIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset("assets/icons/Iconly-Broken-Chat.svg",
        color: Colors.white);
  }
}

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Broken-Chat.svg",
    );
  }
}

class NetWorthIcon extends StatelessWidget {
  const NetWorthIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Broken-Bag.svg",
    );
  }
}

class NetWorthFilledIcon extends StatelessWidget {
  const NetWorthFilledIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/net-worth-filled.svg",
    );
  }
}

class WalletFilledIcon extends StatelessWidget {
  const WalletFilledIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/wallet-filled.svg",
    );
  }
}

class SquareBackIcon extends StatelessWidget {
  const SquareBackIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return WebsafeSvg.asset(
      "assets/icons/Iconly-Light-outline-Arrow-Left-Square.svg",
    );
  }
}
