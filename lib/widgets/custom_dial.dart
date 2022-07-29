import 'package:flutter/material.dart';
import 'package:mentalwaev/theme/theme.dart';

class CustomDial extends StatelessWidget {
  const CustomDial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 134,
        width: 134,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.goldenGlow.withOpacity(0.5),
              spreadRadius: 12,
              blurRadius: 12,
            ),
          ],
          color: AppColors.darkGreen_2,
          border: Border.all(
            color: AppColors.goldenGlow,
          ),
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mins',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              '5:49',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
