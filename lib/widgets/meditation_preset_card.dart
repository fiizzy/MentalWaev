import 'package:flutter/material.dart';

class MeditationPresetCard extends StatelessWidget {
  final Widget prefix;
  final Widget suffix;
  final Color color;
  final double leftPadding;
  final double rightPadding;
  const MeditationPresetCard({
    Key? key,
    required this.prefix,
    required this.suffix,
    required this.color,
    required this.leftPadding,
    required this.rightPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(leftPadding, 17.0, rightPadding, 17.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          prefix,
          suffix,
        ],
      ),
    );
  }
}
