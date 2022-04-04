import 'package:flutter/material.dart';
import 'package:logincook/constants/color_const.dart';
import 'package:logincook/screens/login/login_screen.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
         
          elevation: 7,
          animationDuration: const Duration(milliseconds: 500),
          fixedSize: const Size(193, 45),
          primary: ColorConst.kPrimaryColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)))),
      child: const Text("Get started",
          style: TextStyle(fontFamily: "Rambla", fontSize: 20)),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      },
    );
  }
}
