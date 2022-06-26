import 'package:flutter/material.dart';
import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/utils/icon_framer.dart';
import 'package:mentalwaev/utils/spaces.dart';

Widget authCards(BuildContext context, String icon, String text) {
  return ElevatedButton(
    // decoration: BoxDecoration(
    //   borderRadius: BorderRadius.circular(5),
    //   color: AppColors.darkGreen_2,
    // ),
    // padding: EdgeInsets.all(SpaceConst.padding_20),
    // width: SpaceConst.deviceWidth(context),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconFramer("google.png"),
        SpaceConst.horizontalOne,
        Text("Sign in with Google",
            style: Theme.of(context).textTheme.subtitle1),
      ],
    ),
    onPressed: () {},
  );
}
