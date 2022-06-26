import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/views/auth/login.dart';
import 'package:mentalwaev/views/home/home.dart';

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
      home: const SignUp(),
      initialRoute: "/home",
      routes: {
        '/Home': (context) => Home(),
        '/login': (context) => const SignUp()
      },
    );
  }
}
