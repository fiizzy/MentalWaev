import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/views/auth/login.dart';
import 'package:mentalwaev/views/timer/timer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme().themeData,
      initialRoute: "/login",
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const SignUp(),
        '/timerScreen': (context) => const MeditationTimerScreen(),
      },
    );
  }
}
