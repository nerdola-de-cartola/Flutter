import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../app/core/colors.dart';
import '../widgets/text_input.dart';

class Home extends GetView {
  const Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: homeGradient,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: const [
                  SizedBox(
                    width: 500.0,
                    height: 225.0,
                    child: Center(child: Image(image: AssetImage('assets/logo.png'))),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
