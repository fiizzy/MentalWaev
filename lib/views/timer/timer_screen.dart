import 'package:flutter/material.dart';
import 'package:mentalwaev/enums/button_types.dart';
import 'package:mentalwaev/utils/icon_framer.dart';
import 'package:mentalwaev/utils/util.dart';
import 'package:mentalwaev/widgets/button.dart';
import 'package:mentalwaev/widgets/curve_line_boxes.dart';
import 'package:mentalwaev/widgets/hannahs_app_bar.dart';

class MeditationTimerScreen extends StatefulWidget {
  const MeditationTimerScreen({Key? key}) : super(key: key);

  @override
  State<MeditationTimerScreen> createState() => _MeditationTimerScreenState();
}

class _MeditationTimerScreenState extends State<MeditationTimerScreen> {
  @override
  Widget build(BuildContext context) {
    String time = '05:49';
    Info.setWidth = MediaQuery.of(context).size.width;
    Info.setHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(padding: EdgeInsets.only(top: 30.0)),
            const HannahsAppBar(),
            const Spacer(),
            CustomCurveBoxes(
              time: time,
              timeUnit: Container(),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Button(
                context: context,
                icon: iconFramer('alarm_off.png', 18.0),
                text: 'Stop Session',
                onPressed: () {},
                type: time == '0.0' ?ButtonTypes.positive : ButtonTypes.negative,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 36.0)),
          ],
        ),
      ),
    );
  }
}
