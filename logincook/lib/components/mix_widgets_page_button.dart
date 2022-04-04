import 'package:flutter/material.dart';
import 'package:logincook/constants/color_const.dart';
import 'package:logincook/screens/login/login_screen.dart';
import 'package:logincook/screens/signup/signup_screen.dart';

class MixWidgetsPageButton extends StatelessWidget {
  const MixWidgetsPageButton({
    Key? key,
    this.login = true,
  }) : super(key: key);

  final bool login;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        _OrSignInWith(size: size, divider: divider, login: login),
        Padding(
          padding: EdgeInsets.all(size.height * 0.03),
          child: InkWell(
            onTap: () {},
            child: const Image(
              image: AssetImage("assets/icons/google_icon_130924 1.png"),
            ),
          ),
        ),
        _AlreadyHaveAnAccountAcheck(login: login),
      ],
    );
  }

  Expanded get divider => Expanded(
        child: Divider(
          height: 2,
          thickness: 2,
          color: ColorConst.kDividerColor,
          endIndent: 20,
          indent: 20,
        ),
      );
}

class _OrSignInWith extends StatelessWidget {
  const _OrSignInWith({
    Key? key,
    required this.size,
    required this.divider,
    required this.login,
  }) : super(key: key);

  final Size size;
  final Expanded divider;
  final bool login;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          divider,
          Text(login ? "Or sign in with" : "Or sign up with"),
          divider,
        ],
      ),
    );
  }
}

class _AlreadyHaveAnAccountAcheck extends StatelessWidget {
  const _AlreadyHaveAnAccountAcheck({
    Key? key,
    required this.login,
  }) : super(key: key);

  final bool login;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account ? ",
          style: TextStyle(
            color: ColorConst.kBlackColor,
            fontSize: 16,
            fontFamily: "Rambla",
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    login ? const SignupScreen() : const LoginScreen(),
              ),
            );
          },
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: ColorConst.kPrimaryColor,
              fontSize: 16,
              fontFamily: "Rambla",
            ),
          ),
        ),
      ],
    );
  }
}
