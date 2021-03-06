
import 'package:flutter/material.dart';
import 'package:logincook/components/my_checkbox.dart';
import 'package:logincook/constants/color_const.dart';

class RememberAndForgetPassword extends StatelessWidget {
  const RememberAndForgetPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: size.width*0.1,vertical: size.height*0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const _RememberMe(),
          InkWell(
            onTap: () {},
            child: Text(
              "Forget password?",
              style: TextStyle(
                color: ColorConst.kBlackColor,
                fontSize: 16,
                fontFamily: "Rambla",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _RememberMe extends StatelessWidget {
  const _RememberMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const MyCheckbox(),
        Text(
          "Remember me",
          style: TextStyle(
            color: ColorConst.kPrimaryColor,
            fontSize: 16,
            fontFamily: "Rambla",
          ),
        ),
      ],
    );
  }
}

