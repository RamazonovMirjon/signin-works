import 'package:flutter/material.dart';
import 'package:logincook/components/rounded_imput_field.dart';
import 'package:logincook/components/rounded_password_field.dart';
import 'package:logincook/constants/color_const.dart';
import 'package:logincook/screens/login/background.dart';
import 'package:logincook/screens/signup/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sign in',
          style: TextStyle(
            color: ColorConst.kPrimaryColor,
            fontSize: 22,
            fontFamily: "Rambla",
          ),
        ),
        SizedBox(height: size.height*0.06),
        RoundedImputField(
          text: "Email",
          onChanged: (v) {},
        ),
        RoundedPasswordField(
          onChanged: (v) {},
          page: const SignupScreen(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              
            ],
          ),
        )
      ],
    ));
  }
}
