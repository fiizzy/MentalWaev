import 'package:flutter/material.dart';

SizedBox iconFramer(
  String iconName,
  double height,
) =>
    SizedBox(
      width: 20,
      height: height,
      child: Image.asset(
        'assets/icons/$iconName',
      ),
    );
