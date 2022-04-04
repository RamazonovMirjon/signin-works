import 'package:flutter/material.dart';
import 'package:logincook/components/mix_widgets_page_button.dart';
import 'package:logincook/components/remember_me_and_forget_password.dart';
import 'package:logincook/components/rounded_imput_field.dart';
import 'package:logincook/components/rounded_password_field.dart';
import 'package:logincook/constants/color_const.dart';
import 'package:logincook/screens/login/login_screen.dart';
import 'package:logincook/screens/signup/background.dart';
import 'package:logincook/screens/signup/components/service_and_privacy.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                color: ColorConst.kPrimaryColor,
                fontSize: 22,
                fontFamily: "Rambla",
              ),
            ),
            RoundedImputField(
              text: "Full Name",
              onChanged: (v) {},
            ),
            RoundedImputField(
              text: "Email",
              onChanged: (v) {},
            ),
            RoundedPasswordField(
              onChanged: (v) {},
              page: const LoginScreen(),
            ),
            const ServiceAndPrivacy(),
            const RememberAndForgetPassword(),
            const MixWidgetsPageButton(login: false),
            SizedBox(height: size.height * 0.02),
          ],
        ),
      ),
    );
  }
}
