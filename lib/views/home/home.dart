import 'package:flutter/material.dart';
import 'package:mentalwaev/utils/util.dart';
import 'package:mentalwaev/widgets/space_tag.dart';

import '../../widgets/curve_line_boxes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Info.setHeight = MediaQuery.of(context).size.height;
    Info.setWidth = MediaQuery.of(context).size.width;
    final appBar = AppBar(
      leading: Container(),
      title: spaceTag(context),
      centerTitle: true,
    );
    final appBarHeight = appBar.preferredSize.height;
    return Scaffold(
      appBar: appBar,
      body: Stack(children: [
        Column(
          children: [
            SizedBox(height: Utils.dialRectboxHeight - appBarHeight),
            const CustomCurveBoxes(),
          ],
        ),
        Positioned(
          top: Utils.dialRectboxHeight - 38,
          left: Info.deviceWidth / 3,
          child: Text(
            'LIFETIME MEDITATION',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  letterSpacing: 2,
                ),
          ),
        ),
      ]),
    );
  }
}

/*
Positioned(
                bottom: 10,
                child: Container(
                  width: SpaceConst.deviceWidth(context),
                  padding: EdgeInsets.all(SpaceConst.padding_20),
                  child: button(context, "hearts.png", "New Mediation",
                      ButtonTypes.normal, () {}),
                ))
*/
