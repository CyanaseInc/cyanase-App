import 'package:cyanase_mobile_app/screens/topup/slides/top_up_slide_1.dart';
import 'package:cyanase_mobile_app/screens/topup/slides/top_up_slide_2.dart';
import 'package:flutter/cupertino.dart';

class TopUpModel {
  final String title, description;
  final Widget slide;

  TopUpModel(
      {required this.slide, required this.title, required this.description});
}

List<TopUpModel> topupslides = [
  TopUpModel(
    slide: const TopSlide1(),
    title: "Account type",
    description:
        "Choose the currency in which you would like to invest your money",
  ),
  TopUpModel(
    slide: const TopSlide2(),
    title: "Make a deposit to continue in UGX",
    description: "Continue to deposit in UGX",
  ),
];
