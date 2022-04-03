import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset(
              "assets/images/Berry's 1 (1).png",height: size.height*0.4,
            ),
          ),
          Positioned(
            top: 21,
            left: 17,
            child: IconButton(
              icon: const Image(
                image: AssetImage("assets/icons/chevron-left.png"),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Center(child: child),
        ],
      ),
    );
  }
}
