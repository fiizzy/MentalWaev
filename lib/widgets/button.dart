import 'package:flutter/material.dart';
import 'package:mentalwaev/enums/button_types.dart';
import 'package:mentalwaev/utils/icon_framer.dart';
import 'package:mentalwaev/utils/spaces.dart';

import '../theme/theme.dart';

Widget button(BuildContext context, String? icon, String text, ButtonTypes type,
    void Function() onPressed) {
  return ElevatedButton(
    style: ButtonStyle(
        backgroundColor: type == ButtonTypes.positive
            ? MaterialStateProperty.all<Color>(AppColors.positive)
            : type == ButtonTypes.negative
                ? MaterialStateProperty.all<Color>(AppColors.negative)
                : MaterialStateProperty.all<Color>(AppColors.cyanAccent)),
    onPressed: onPressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon != null ? iconFramer(icon) : Container(),
        SpaceConst.horizontalOne,
        Text(text,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color:
                    type == ButtonTypes.normal ? Colors.black : Colors.white)),
      ],
    ),
  );
}
