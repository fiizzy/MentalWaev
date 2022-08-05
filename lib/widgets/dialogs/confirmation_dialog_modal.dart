// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/utils/spaces.dart';
import 'package:mentalwaev/widgets/dialogs/common_dialog_widget.dart';
import 'package:mentalwaev/widgets/dialogs/custom_dialog_button.dart';

class ConfirmationDialog {
  String titleText;
  String? subtitleText;
  String confirmText;
  String cancelText;
  BuildContext context;
  TextStyle? textStyle;
  Function() onCancel;
  Function() onConfirm;

  ConfirmationDialog({
    required this.titleText,
    required this.confirmText,
    required this.cancelText,
    required this.context,
    this.textStyle,
    this.subtitleText,
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
            titleText,
            style: textStyle,
          ),
          if (subtitleText != null) SpaceConst.verticalOne,
          if (subtitleText != null)
            Text(
              subtitleText!,
              style: textStyle,
            ),
          Padding(
            padding: EdgeInsets.only(
                top: SpaceConst.padding_30, bottom: SpaceConst.padding_15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textButton(
                  context: context,
                  text: "Cancel",
                  onPressed: onCancel,
                ),
                dialogButton(
                  context: context,
                  text: "Yes",
                  backgroundColor: AppColors.negative_2,
                  textColor: AppColors.negative,
                  onPressed: onConfirm,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
