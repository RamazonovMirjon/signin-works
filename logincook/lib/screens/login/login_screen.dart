import 'package:flutter/material.dart';
import 'package:logincook/screens/login/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Scaffold(body: Body(),));
  }
}