import 'package:flutter/material.dart';
import 'package:logincook/components/text_fild_container.dart';
import 'package:logincook/constants/color_const.dart';
import 'package:logincook/screens/signup/signup_screen.dart';

class RoundedPasswordField extends StatefulWidget {
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.page,
  }) : super(key: key);

  final ValueChanged<String> onChanged;
  final Widget page;

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool chack = true;
  @override
  Widget build(BuildContext context) {
    return TextFildContainer(
      child: TextField(
          onChanged: widget.onChanged,
          obscureText: chack,
          cursorColor: ColorConst.kPrimaryColor,
          style: TextStyle(
            color: ColorConst.kWhiteColor,
            fontFamily: "Rambla",
            fontSize: 15,
          ),
          keyboardType: TextInputType.text,
          decoration: _decoration,
          textInputAction: TextInputAction.done,
          //onEditingComplete: () {},
          onSubmitted: (String value) async {
            //FocusScope.of(context).unfocus();
            await Future.delayed(const Duration(seconds: 1));
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => widget.page,
              ),
            );
          }),
    );
  }

  InputDecoration get _decoration => InputDecoration(
        iconColor: ColorConst.kWhiteColor,
        suffixStyle: TextStyle(color: ColorConst.kWhiteColor),
        suffixIconColor: ColorConst.kWhiteColor,
        border: InputBorder.none,
        hintText: "  Passworsd",
        hintStyle: TextStyle(
          color: ColorConst.kWhiteColor,
          fontFamily: "Rambla",
          fontSize: 15,
        ),
        suffixIcon: InkWell(
          child: chack
              ? const Image(
                  image: AssetImage("assets/icons/hidden 1.png"),
                )
              : const Icon(
                  Icons.visibility,
                  color: Colors.white,
                ),
          onTap: () {
            setState(
              () {
                chack = !chack;
              },
            );
          },
        ),
      );
}
