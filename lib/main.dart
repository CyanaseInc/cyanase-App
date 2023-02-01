import 'package:cyanase_mobile_app/env/env.dart';
import 'package:cyanase_mobile_app/screens/home/home.dart';
import 'package:cyanase_mobile_app/screens/login/login.dart';
import 'package:cyanase_mobile_app/screens/passwordrecovery/new_password.dart';
import 'package:cyanase_mobile_app/screens/passwordrecovery/password_recovery_email.dart';
import 'package:cyanase_mobile_app/screens/passwordrecovery/password_recovery_phone.dart';
import 'package:cyanase_mobile_app/screens/passwordrecovery/verify_account.dart';
import 'package:cyanase_mobile_app/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:provider/provider.dart';
import 'bloc/main_application_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainApplicationBloc(),
      child: MaterialApp(
        title: 'Cyanase Investors',
        initialRoute: "/",
        routes: {
          "/": (context) => const LoginScreen(),
          "/home": (context) => const Home(),
          "/signup": (context) => const SignUp(),
          "/password-recovery-phone": (context) =>
              const PasswordRecoveryPhone(),
          "/password-recovery-email": (context) =>
              const PasswordRecoveryEmail(),
          "/verify-account": (context) => const VerifyAccount(),
          "/new-password": (context) => const NewPassword(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: kprimary,
          primarySwatch: Palette.kToDark,
        ),
        scrollBehavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
      ),
    );
  }
}
