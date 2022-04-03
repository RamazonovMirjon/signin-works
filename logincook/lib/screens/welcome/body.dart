import 'package:flutter/material.dart';
import 'package:logincook/screens/welcome/components/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/Berry's 1.png",
          ),
          const SizedBox(height: 20),
          const RoundedButton()
        ],
      ),
    );
  }
}
