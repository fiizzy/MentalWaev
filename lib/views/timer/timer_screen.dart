import 'package:flutter/material.dart';
import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/utils/icon_framer.dart';
import 'package:mentalwaev/utils/util.dart';
import 'package:mentalwaev/widgets/curve_line_boxes.dart';

class MeditationTimerScreen extends StatefulWidget {
  const MeditationTimerScreen({Key? key}) : super(key: key);

  @override
  State<MeditationTimerScreen> createState() => _MeditationTimerScreenState();
}

class _MeditationTimerScreenState extends State<MeditationTimerScreen> {
  @override
  Widget build(BuildContext context) {
    Info.setWidth = MediaQuery.of(context).size.width;
    Info.setHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(padding: EdgeInsets.only(top: 30.0)),
            hannahsAppBar(),
            const Spacer(),
            CustomCurveBoxes(
              timeUnit: Container(),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  iconFramer('alarm_off.png', 18.0),
                  const SizedBox(
                    width: 14.0,
                  ),
                  Text(
                    'Stop Session',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 36.0)),
          ],
        ),
      ),
    );
  }

  Widget hannahsAppBar() {
    return Container(
      width: Info.deviceWidth / 1.8,
      padding: const EdgeInsets.fromLTRB(18.0, 6.0, 37.0, 6.0),
      decoration: const BoxDecoration(
        color: AppColors.gray85,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(19.5),
          bottomRight: Radius.circular(19.5),
        ),
      ),
      child: Row(
        children: [
          iconFramer("sun-setting.png", 18.0),
          const SizedBox(width: 12.0),
          Text(
            'Hannah\'s space',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
