import "package:flutter/material.dart";
import "package:get/get.dart";
import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/utils/spaces.dart';
import 'package:mentalwaev/views/home/home.dart';
import 'package:mentalwaev/widgets/auth_cards.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGreen_0,
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/bg-wave.png"),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        )),
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              authCards(context, "google.png", "Sign in with Google", () {
                Get.to(() => const Home());
              }),
              SpaceConst.verticalOne,
              authCards(context, null, "Other methods coming soon", () {}),
              // Container(height: 50, width: 50, color: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}
