import 'package:flutter/material.dart';

import '../app/core/colors.dart';

class GoogleBtn1 extends StatelessWidget {
final Function() onPressed;
  const GoogleBtn1({
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
              "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Fsearch%20(2).png?alt=media&token=24a918f7-3564-4290-b7e4-08ff54b3c94c",
              width: 20,
            ),
            const SizedBox(width: 10),
            const Text("Google",
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