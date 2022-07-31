import 'package:flutter/material.dart';
import 'package:mentalwaev/theme/theme.dart';

class CustomDial extends StatelessWidget {
  final Widget timeUnit;
  const CustomDial({
    Key? key,
    required this.timeUnit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 134,
        width: 134,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.greenShadow.withOpacity(0.25),
              spreadRadius: 5,
              blurRadius: 21,
              offset: const Offset(0, 14),
            ),
            BoxShadow(
              color: AppColors.pinkShadow.withOpacity(0.55),
              spreadRadius: 0,
              blurRadius: 15,
              offset: const Offset(8, -8),
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
            timeUnit,
            
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
