import 'package:flutter/material.dart';
import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/utils/icon_framer.dart';
import 'package:mentalwaev/utils/util.dart';

class HannahsAppBar extends StatelessWidget {
  const HannahsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
      width: Info.deviceWidth / 1.8,
      padding: const EdgeInsets.fromLTRB(18.0, 6.0, 37.0, 6.0),
      decoration: const BoxDecoration(
        color: AppColors.gray85,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(19.5),
          bottomRight: Radius.circular(19.5),
        ),
      ),
      child: Row(
        children: [
          iconFramer("sun-setting.png", 18.0),
          const SizedBox(width: 12.0),
          Text(
            'Hannah\'s space',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    ); 
  }
}