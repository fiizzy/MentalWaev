// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/utils/spaces.dart';
import 'package:mentalwaev/widgets/custom_checkbox.dart';
import 'package:mentalwaev/widgets/dialogs/common_dialog_widget.dart';
import 'package:mentalwaev/widgets/dialogs/custom_dialog_button.dart';

class SetTimerModal {
  BuildContext context;

  TextStyle? textStyle;
  Function() onCancel;
  Function() onConfirm;

  SetTimerModal({
    required this.context,
    this.textStyle,
    required this.onCancel,
    required this.onConfirm,
  }) {
    textStyle = Theme.of(context).textTheme.bodyMedium;

    CommonDialogWidget(
      context: context,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Enter Time in minutes",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SpaceConst.horizontalTwo,
          TextFormField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            cursorColor: AppColors.cyanAccent,
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.cyanAccent),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.cyanAccent),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(SpaceConst.padding_30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                textButton(
                  context: context,
                  text: "Cancel",
                  onPressed: onCancel,
                ),
                dialogButton(
                  context: context,
                  text: "Set",
                  backgroundColor: AppColors.darkGreen_3,
                  textColor: AppColors.cyanAccent,
                  onPressed: onConfirm,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CheckBoxTile(
                onChanged: () {}, value: true, label: "Save as preset"),
          ),
        ],
      ),
    );
  }
}
