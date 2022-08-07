import 'package:flutter/material.dart';
import 'package:mentalwaev/enums/button_types.dart';
import 'package:mentalwaev/utils/spaces.dart';

import '../theme/theme.dart';

class Button extends StatelessWidget {
  final BuildContext context;
  final Widget icon;
  final String text;
  final ButtonTypes type;
  final void Function() onPressed;
  const Button({
    Key? key,
    required this.context,
    required this.icon,
    required this.text,
    required this.onPressed,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: type == ButtonTypes.positive
            ? MaterialStateProperty.all<Color>(
                AppColors.positive,
              )
            : type == ButtonTypes.negative
                ? MaterialStateProperty.all<Color>(
                    AppColors.negative,
                  )
                : type == ButtonTypes.normal
                    ? MaterialStateProperty.all<Color>(
                        AppColors.gray95,
                      )
                    : MaterialStateProperty.all<Color>(
                        AppColors.cyanAccent,
                      ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SpaceConst.horizontalOne,
          Text(
            text,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color:
                      type == ButtonTypes.normal ? Colors.black : Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
