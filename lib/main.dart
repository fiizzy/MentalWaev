import 'package:flutter/material.dart';
import 'package:mentalwaev/theme/theme.dart';
import 'package:mentalwaev/views/auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme().themeData,
      home: const SignUp(),
    );
  }
}