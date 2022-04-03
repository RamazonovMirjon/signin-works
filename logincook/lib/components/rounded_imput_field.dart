import 'package:flutter/material.dart';
import 'package:logincook/components/text_fild_container.dart';
import 'package:logincook/constants/color_const.dart';

class RoundedImputField extends StatelessWidget {
  const RoundedImputField({
    Key? key,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

  final String text;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFildContainer(
      child: TextField(
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        style: TextStyle(
          color: ColorConst.kWhiteColor,
          fontFamily: "Rambla",
          fontSize: 15,
        ),
        onChanged: (value) => () {},
        cursorColor: ColorConst.kPrimaryColor,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: ColorConst.kWhiteColor,
            fontFamily: "Rambla",
            fontSize: 15,
          ),
          hintText: "  $text",
          hoverColor: ColorConst.kWhiteColor,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
