import 'package:flutter/material.dart';

import '../app/core/colors.dart';

class TextInput extends StatelessWidget {
  final String labelText;

  const TextInput({
    required this.labelText,
    Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: TextFormField(
        cursorColor: lightBlue,
        decoration: InputDecoration(
          filled: true,
          fillColor: grey,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: grey),
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: lightBlue,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          labelText: labelText,
          labelStyle: const TextStyle(color: black, fontSize: 18),
        ),
      ),
    );
  }
}
