import "package:flutter/material.dart";
import 'package:mentalwaev/theme/theme.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGreen_0,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: const AssetImage("/images/bg-wave.png"),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        )),
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}
