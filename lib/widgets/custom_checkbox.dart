import 'package:flutter/material.dart';

import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/utils/spaces.dart';

class CheckBoxTile extends StatelessWidget {
  Function onChanged;
  bool value;
  Color activeColor;
  String label;

  CheckBoxTile({
    Key? key,
    required this.onChanged,
    required this.value,
    this.activeColor = AppColors.cyanAccent,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            activeColor: activeColor,
            value: value,
            onChanged: (val) => onChanged(),
          ),
          SpaceConst.horizontalOne,
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
