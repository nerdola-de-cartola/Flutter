import 'package:app2/app/core/colors.dart';
import 'package:flutter/material.dart';

class AppleBtn1 extends StatelessWidget {
  final Function() onPressed;
  const AppleBtn1({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 120,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/socials%2Fapple-black-logo.png?alt=media&token=c44581fa-6fd2-4ae2-bd85-18bfbe6386d2",
              width: 20,
            ),
            const SizedBox(width: 10),
            const Text(
              "Apple",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16
              )
            ),
          ],
        ),
        onPressed: onPressed,
      )
    );
  }
}