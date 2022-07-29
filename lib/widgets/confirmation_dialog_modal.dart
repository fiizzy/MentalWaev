// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/utils/spaces.dart';

class ConfirmationDialog {
  String titleText;
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
    required this.onCancel,
    required this.onConfirm,
  }) {
    textStyle = Theme.of(context).textTheme.bodyLarge;

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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  titleText,
                  style: textStyle,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: SpaceConst.padding_30,
                      bottom: SpaceConst.padding_15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      cancelButton(),
                      confirmButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget cancelButton() {
    return TextButton(
      onPressed: onCancel,
      child: Text(
        cancelText,
        style: textStyle!.copyWith(color: AppColors.cyanAccent),
      ),
    );
  }

  Widget confirmButton() {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.negative_2),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(horizontal: 26, vertical: 8)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      onPressed: onConfirm,
      child: Text(
        confirmText,
        style: textStyle!.copyWith(color: AppColors.negative),
      ),
    );
  }
}
