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
                blurRadius: 4,
                blurStyle: BlurStyle.normal,
                offset: Offset.zero,
                spreadRadius: 7),
          ],
          color: ColorConst.kPrimaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: child,
    );
  }
}
