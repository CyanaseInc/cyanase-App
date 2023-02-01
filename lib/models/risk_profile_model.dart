import 'package:cyanase_mobile_app/screens/risk/sides/risk_profile_slide_1.dart';
import 'package:cyanase_mobile_app/screens/risk/sides/risk_profile_slide_10.dart';
import 'package:cyanase_mobile_app/screens/risk/sides/risk_profile_slide_11.dart';
import 'package:cyanase_mobile_app/screens/risk/sides/risk_profile_slide_2.dart';
import 'package:cyanase_mobile_app/screens/risk/sides/risk_profile_slide_3.dart';
import 'package:cyanase_mobile_app/screens/risk/sides/risk_profile_slide_4.dart';
import 'package:cyanase_mobile_app/screens/risk/sides/risk_profile_slide_5.dart';
import 'package:cyanase_mobile_app/screens/risk/sides/risk_profile_slide_6.dart';
import 'package:cyanase_mobile_app/screens/risk/sides/risk_profile_slide_7.dart';
import 'package:cyanase_mobile_app/screens/risk/sides/risk_profile_slide_8.dart';
import 'package:cyanase_mobile_app/screens/risk/sides/risk_profile_slide_9.dart';
import 'package:flutter/material.dart';

class RiskProfileSlideModel {
  late final String title, btnText;
  final Widget slide;
  //////////////////////////////
  RiskProfileSlideModel({
    required this.slide,
    required this.btnText,
    required this.title,
  });
}

List<RiskProfileSlideModel> RiskProfilesSides = [
  RiskProfileSlideModel(
    btnText: "Proceed",
    title: "Make a personal investment",
    slide: const RiskProfileSlide1(),
  ),
  RiskProfileSlideModel(
    btnText: "Proceed",
    title: "Make a personal investment",
    slide: const RiskProfileSlide2(),
  ),
  RiskProfileSlideModel(
    btnText: "Proceed",
    title: "Make a personal investment",
    slide: const RiskProfileSlide3(),
  ),
  RiskProfileSlideModel(
    btnText: "Proceed",
    title: "Make a personal investment",
    slide: const RiskProfileSlide4(),
  ),
  RiskProfileSlideModel(
    btnText: "Proceed",
    title: "Make a personal investment",
    slide: const RiskProfileSlide5(),
  ),
  RiskProfileSlideModel(
    btnText: "Proceed",
    title: "Make a personal investment",
    slide: const RiskProfileSlide6(),
  ),
  RiskProfileSlideModel(
    btnText: "Proceed",
    title: "Make a personal investment",
    slide: const RiskProfileSlide7(),
  ),
  RiskProfileSlideModel(
    btnText: "Proceed",
    title: "Make a personal investment",
    slide: const RiskProfileSlide8(),
  ),
  RiskProfileSlideModel(
    btnText: "Proceed",
    title: "Make a personal investment",
    slide: const RiskProfileSlide9(),
  ),
  RiskProfileSlideModel(
    btnText: "Proceed",
    title: "Make a personal investment",
    slide: const RiskProfileSlide10(),
  ),
  RiskProfileSlideModel(
    btnText: "Proceed",
    title: "Make a personal investment",
    slide: const RiskProfileSlide11(),
  ),
];
