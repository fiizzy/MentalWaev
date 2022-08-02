import 'package:flutter/material.dart';
import 'package:mentalwaev/enums/button_types.dart';
import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/utils/spaces.dart';
import 'package:mentalwaev/widgets/button.dart';
import 'package:mentalwaev/widgets/meditation_preset_card.dart';

class NewMotivationScreen extends StatefulWidget {
  const NewMotivationScreen({Key? key}) : super(key: key);

  @override
  State<NewMotivationScreen> createState() => _NewMotivationScreenState();
}

class _NewMotivationScreenState extends State<NewMotivationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(top: SpaceConst.padding_100),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.darkGreen_2,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                '0:00',
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
            prefix: Text(
              'Set custom timer',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontFamily: 'Poppins-ExtraLight',
                    letterSpacing: 0.2,
                    fontSize: 16.0,
                  ),
            ),
            suffix: const Icon(Icons.add_alarm),
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
            icon: const Icon(Icons.star),
            text: 'Start Meditation',
            onPressed: () {},
            type: ButtonTypes.normal,
          ),
          Padding(padding: EdgeInsets.only(bottom: SpaceConst.padding_36)),
        ],
      ),
    );
  }
}
