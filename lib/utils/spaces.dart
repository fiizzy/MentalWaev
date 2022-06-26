import 'package:flutter/material.dart';

//This class stores all reusable horizontal and vertical space constants.
class SpaceConst {
  static BuildContext? context;
  static SizedBox horizontalOne = const SizedBox(
    width: 10,
  );
  static SizedBox horizontalTwo = const SizedBox(
    width: 30,
  );
  static SizedBox verticalOne = const SizedBox(
    height: 10,
  );
  static SizedBox verticalTwo = const SizedBox(
    height: 30,
  );
  static double padding_10 = 10;
  static double padding_15 = 15;
  static double padding_20 = 20;
  static double padding_25 = 25;
  static double padding_30 = 30;

  //Device height and width
  static double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double deviceWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double buttonWidth(BuildContext context) =>
      MediaQuery.of(context).size.width * .8;

  static double buttonHeight = 45;
}
