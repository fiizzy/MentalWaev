import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentalwaev/enums/button_types.dart';
import 'package:mentalwaev/utils/spaces.dart';
import 'package:mentalwaev/widgets/button.dart';
import 'package:mentalwaev/widgets/space_tag.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: spaceTag(context),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("images/wave-2.png")],
            ),
            Positioned(
                bottom: 10,
                child: Container(
                  width: SpaceConst.deviceWidth(context),
                  padding: EdgeInsets.all(SpaceConst.padding_20),
                  child: button(context, "hearts.png", "New Mediation",
                      ButtonTypes.normal, () {}),
                ))
          ],
        ));
  }
}
