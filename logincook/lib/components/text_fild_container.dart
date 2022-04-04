import 'package:flutter/material.dart';
import 'package:logincook/constants/color_const.dart';

class TextFildContainer extends StatelessWidget {
  const TextFildContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              color: ColorConst.kBlackColor.withOpacity(0.2),
              spreadRadius: 4,
              offset: const Offset(0, 5),
            ),
          ],
          color: ColorConst.kPrimaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: child,
    );
  }
}
