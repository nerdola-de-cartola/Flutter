import 'package:flutter/material.dart';

class HelpButton extends StatelessWidget {
  final double radius;
  final Widget icon;
  final Gradient gradient;
  final Function() onPressed;

  const HelpButton(
      {required this.radius,
      required this.icon,
      required this.gradient,
      required this.onPressed,
      Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: radius,
      height: radius,
      decoration: ShapeDecoration(
          gradient: gradient,
          shape: const CircleBorder(side: BorderSide(color: Colors.transparent))),
      child: IconButton(
        icon: icon,
        padding: EdgeInsets.zero,
        splashRadius: radius / 2,
        iconSize: radius / 2,
        onPressed: onPressed,
      ),
    );
  }
}
