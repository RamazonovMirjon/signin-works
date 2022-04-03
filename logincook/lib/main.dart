import 'package:flutter/material.dart';
import 'package:logincook/constants/color_const.dart';
import 'package:logincook/screens/welcome/welcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cook',
      theme: ThemeData(
        primaryColor: ColorConst.kPrimaryColor,
        scaffoldBackgroundColor: ColorConst.kWhiteColor,
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
    );
  }
}
