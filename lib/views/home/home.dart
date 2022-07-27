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
      body: Column(
        children: [
          SizedBox(height: 226 / 700 * Info.deviceHeight - appBarHeight),
          const CustomCurveBoxes(),
        ],
      ),
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
