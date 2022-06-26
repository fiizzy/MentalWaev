import 'package:flutter/cupertino.dart';
import 'package:mentalwaev/utils/icon_framer.dart';
import 'package:mentalwaev/utils/spaces.dart';

Widget spaceTag(BuildContext context) {
  return SizedBox(
    // width: 300,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconFramer("sun-setting.png"),
        SpaceConst.horizontalOne,
        Text("Hannah's space")
      ],
    ),
  );
}
