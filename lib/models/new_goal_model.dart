import 'package:cyanase_mobile_app/screens/newgoal/slides/new_goal_slide_1.dart';
import 'package:cyanase_mobile_app/screens/newgoal/slides/new_goal_slide_10.dart';
import 'package:cyanase_mobile_app/screens/newgoal/slides/new_goal_slide_11.dart';
import 'package:cyanase_mobile_app/screens/newgoal/slides/new_goal_slide_2.dart';
import 'package:cyanase_mobile_app/screens/newgoal/slides/new_goal_slide_3.dart';
import 'package:cyanase_mobile_app/screens/newgoal/slides/new_goal_slide_4.dart';
import 'package:cyanase_mobile_app/screens/newgoal/slides/new_goal_slide_5.dart';
import 'package:cyanase_mobile_app/screens/newgoal/slides/new_goal_slide_6.dart';
import 'package:cyanase_mobile_app/screens/newgoal/slides/new_goal_slide_7.dart';
import 'package:cyanase_mobile_app/screens/newgoal/slides/new_goal_slide_8.dart';
import 'package:cyanase_mobile_app/screens/newgoal/slides/new_goal_slide_9.dart';
import 'package:flutter/material.dart';

class NewGoalSlideModel {
  final String title, desc, btnText;
  final Widget slide;
  //////////////////////////////
  NewGoalSlideModel({
    required this.desc,
    required this.slide,
    required this.btnText,
    required this.title,
  });
}

List<NewGoalSlideModel> NewGoalsSides = [
  NewGoalSlideModel(
    btnText: "Get started",
    title: "New Goal",
    desc: "Let your dreams come true by investing",
    slide: const NewGoalSlide1(),
  ),
  NewGoalSlideModel(
    btnText: "Next",
    title: "Add your goal",
    desc: "What do yoy want to achive",
    slide: const NewGoalSlide2(),
  ),
  NewGoalSlideModel(
    btnText: "Next",
    title: "Deposit Type",
    desc: "How do you want to handle your investments",
    slide: const NewGoalSlide3(),
  ),
  NewGoalSlideModel(
    btnText: "Next",
    title: "Deposit Time",
    desc: "When do you want to deposit for this goal",
    slide: const NewGoalSlide4(),
  ),
  NewGoalSlideModel(
    btnText: "Next",
    title: "Reminder",
    desc: "Let us remind you when you forget to deposit",
    slide: const NewGoalSlide5(),
  ),
  NewGoalSlideModel(
    btnText: "Finish",
    title: "Make a deposit to continue",
    desc: "Deposit from wallet",
    slide: const NewGoalSlide6(),
  ),
  // NewGoalSlideModel(
  //   btnText: "Proceed",
  //   title: "Make a personal investment",
  //   slide: const NewGoalSlide7(),
  // ),
  // NewGoalSlideModel(
  //   btnText: "Proceed",
  //   title: "Make a personal investment",
  //   slide: const NewGoalSlide8(),
  // ),
  // NewGoalSlideModel(
  //   btnText: "Proceed",
  //   title: "Make a personal investment",
  //   slide: const NewGoalSlide9(),
  // ),
  // NewGoalSlideModel(
  //   btnText: "Proceed",
  //   title: "Make a personal investment",
  //   slide: const NewGoalSlide10(),
  // ),
  // NewGoalSlideModel(
  //   btnText: "Proceed",
  //   title: "Make a personal investment",
  //   slide: const NewGoalSlide11(),
  // ),
];
