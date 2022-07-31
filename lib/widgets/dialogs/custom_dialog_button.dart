import 'package:flutter/material.dart';
import 'package:mentalwaev/enums/button_types.dart';
import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/utils/icon_framer.dart';
import 'package:mentalwaev/utils/spaces.dart';

Widget dialogButton(
    {required BuildContext context,
    String? icon,
    required String text,
    required void Function() onPressed,
    Color backgroundColor = AppColors.cyanAccent,
    Color textColor = Colors.black}) {
  return ElevatedButton(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all<double>(0),
      backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 26, vertical: 8)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: textColor),
    ),
  );
}

Widget textButton({required context, required onPressed, required text}) {
  return TextButton(
    onPressed: onPressed,
    child: Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: AppColors.cyanAccent),
    ),
  );
}
