import 'package:flutter/material.dart';
import 'package:mentalwaev/enums/button_types.dart';
import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/utils/icon_framer.dart';
import 'package:mentalwaev/utils/spaces.dart';
import 'package:mentalwaev/utils/util.dart';
import 'package:mentalwaev/widgets/button.dart';
import 'package:mentalwaev/widgets/meditation_preset_card.dart';

class NewMeditationScreen extends StatefulWidget {
  const NewMeditationScreen({Key? key}) : super(key: key);

  @override
  State<NewMeditationScreen> createState() => _NewMeditationScreenState();
}

class _NewMeditationScreenState extends State<NewMeditationScreen> {
  @override
  Widget build(BuildContext context) {
    Info.setHeight = MediaQuery.of(context).size.height;

    String meditationTimer = '0.00';

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: SpaceConst.padding_100),
            ),
            Container(
              height: Info.deviceHeight / 6,
              decoration: BoxDecoration(
                color: AppColors.darkGreen_2,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  meditationTimer,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontFamily: 'Poppins-ExtraLight',
                        letterSpacing: 0.2,
                        fontSize: 50.0,
                      ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: SpaceConst.padding_17)),
            MeditationPresetCard(
              onTap: () {},
              prefix: Text(
                'Set custom timer',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontFamily: 'Poppins-ExtraLight',
                      letterSpacing: 0.2,
                      fontSize: 16.0,
                    ),
              ),
              suffix: iconFramer('clock_plus.png', 20.0),
              color: AppColors.darkGreen_2,
              leftPadding: 31.0,
              rightPadding: 36.0,
            ),
            Padding(padding: EdgeInsets.only(bottom: SpaceConst.padding_26)),
            Text(
              'Presets',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontFamily: 'Poppins-ExtraLight',
                    fontSize: 16.0,
                  ),
            ),
            Padding(padding: EdgeInsets.only(bottom: SpaceConst.padding_23)),
            MeditationPresetCard(
              onTap: () {
                setState(() {
                  meditationTimer = '5:00';
                });
              },
              prefix: Text(
                '5 Minutes',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontFamily: 'Poppins-ExtraLight',
                      letterSpacing: 0.2,
                      fontSize: 16.0,
                    ),
              ),
              suffix: Text(
                'Beginner',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontFamily: 'Poppins-ExtraLight',
                      letterSpacing: 0.2,
                      fontSize: 12.0,
                    ),
              ),
              color: AppColors.darkGreen_1,
              leftPadding: 31.0,
              rightPadding: 19.0,
            ),
            Padding(padding: EdgeInsets.only(bottom: SpaceConst.padding_14)),
            MeditationPresetCard(
              onTap: () {
                setState(() {
                  meditationTimer = '10:00';
                });
              },
              prefix: Text(
                '10 Minutes',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontFamily: 'Poppins-ExtraLight',
                      letterSpacing: 0.2,
                      fontSize: 16.0,
                    ),
              ),
              suffix: Text(
                'Novice',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontFamily: 'Poppins-ExtraLight',
                      letterSpacing: 0.2,
                      fontSize: 12.0,
                    ),
              ),
              color: AppColors.darkGreen_1,
              leftPadding: 31.0,
              rightPadding: 19.0,
            ),
            Padding(padding: EdgeInsets.only(bottom: SpaceConst.padding_14)),
            MeditationPresetCard(
              onTap: () {
                setState(() {
                  meditationTimer = '15:00';
                });
              },
              prefix: Text(
                '15 Minutes',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontFamily: 'Poppins-ExtraLight',
                      letterSpacing: 0.2,
                      fontSize: 16.0,
                    ),
              ),
              suffix: Text(
                'Intermediate',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontFamily: 'Poppins-ExtraLight',
                      letterSpacing: 0.2,
                      fontSize: 12.0,
                    ),
              ),
              color: AppColors.darkGreen_1,
              leftPadding: 31.0,
              rightPadding: 19.0,
            ),
            Padding(padding: EdgeInsets.only(bottom: SpaceConst.padding_14)),
            MeditationPresetCard(
              onTap: () {
                setState(() {
                  meditationTimer = '30:00';
                });
              },
              prefix: Text(
                '30 Minutes',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontFamily: 'Poppins-ExtraLight',
                      letterSpacing: 0.2,
                      fontSize: 16.0,
                    ),
              ),
              suffix: Text(
                'god',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontFamily: 'Poppins-ExtraLight',
                      letterSpacing: 0.2,
                      fontSize: 12.0,
                    ),
              ),
              color: AppColors.darkGreen_1,
              leftPadding: 31.0,
              rightPadding: 19.0,
            ),
            const Spacer(),
            Button(
              context: context,
              icon: iconFramer('stars.png', 20.0),
              text: 'Start Meditation',
              onPressed: () {},
              type: ButtonTypes.normal,
            ),
            Padding(padding: EdgeInsets.only(bottom: SpaceConst.padding_36)),
          ],
        ),
      ),
    );
  }
}
