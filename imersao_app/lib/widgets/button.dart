import 'package:flutter/material.dart';
import '../app/core/colors.dart';

class Button extends StatelessWidget {
  final String text;
  final Color color;
  final double height;
  final double width;
  final Function() onPressed;

  const Button({
      required this.text,
      required this.color,
      required this.onPressed,
      this.height = 54,
      this.width = 120,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)))),
          child: Text(
            text,
            style: const TextStyle(
              color: white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
