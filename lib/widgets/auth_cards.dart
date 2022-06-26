import 'package:flutter/material.dart';
import 'package:mentalwaev/utils/icon_framer.dart';
import 'package:mentalwaev/utils/spaces.dart';

Widget authCards(BuildContext context, String? icon, String text,
    void Function() onPressed) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon != null ? iconFramer(icon) : Container(),
        SpaceConst.horizontalOne,
        Text(text, style: Theme.of(context).textTheme.subtitle1),
      ],
    ),
  );
}
