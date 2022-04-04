import 'package:flutter/material.dart';
import 'package:logincook/components/my_checkbox.dart';
import 'package:logincook/constants/color_const.dart';

class ServiceAndPrivacy extends StatelessWidget {
  const ServiceAndPrivacy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyleblack = TextStyle(
      color: ColorConst.kBlackColor,
      fontSize: 14,
      fontFamily: "Rambla",
    );
    TextStyle textStyle = TextStyle(
      color: ColorConst.kPrimaryColor,
      fontSize: 14,
      fontFamily: "Rambla",
    );
    return Center(
      child: Row(
        children: [
          const MyCheckbox(),
          Text("I agree to the terms of", style: textStyleblack),
          InkWell(
            onTap: () {},
            child: Text("service", style: textStyle),
          ),
          Text(" and the ", style: textStyleblack),
          InkWell(
            onTap: () {},
            child: Text("privacy policy", style: textStyle),
          ),
        ],
      ),
    );
  }
}
