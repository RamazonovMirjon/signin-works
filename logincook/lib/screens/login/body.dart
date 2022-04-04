import 'package:flutter/material.dart';
import 'package:logincook/components/mix_widgets_page_button.dart';
import 'package:logincook/components/remember_me_and_forget_password.dart';
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
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Sign in',
              style: TextStyle(
                color: ColorConst.kPrimaryColor,
                fontSize: 22,
                fontFamily: "Rambla",
              ),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedImputField(
              text: "Email",
              onChanged: (v) {},
            ),
            SizedBox(height: size.height * 0.01),
            RoundedPasswordField(
              onChanged: (v) {},
              page: const SignupScreen(),
            ),
            SizedBox(height: size.height * 0.03),
            const RememberAndForgetPassword(),
            SizedBox(height: size.height * 0.03),
            const MixWidgetsPageButton(),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
