import 'package:flutter/material.dart';
import 'package:logincook/constants/color_const.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({
    Key? key,
  }) : super(key: key);

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: ColorConst.kPrimaryColor,
      value: check,
      onChanged: (v) {
        setState(() {
          check = !check;
        });
      },
    );
  }
}
