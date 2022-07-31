import 'package:flutter/material.dart';

import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/utils/spaces.dart';

class CommonDialogWidget {
  BuildContext context;
  Widget content;

  CommonDialogWidget({
    Key? key,
    required this.context,
    required this.content,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          content: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
                vertical: SpaceConst.padding_25,
                horizontal: SpaceConst.padding_15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              color: AppColors.darkGreen_2,
              border: Border.all(color: AppColors.cyanAccent),
            ),
            child: content,
          ),
        );
      },
    );
  }
}
