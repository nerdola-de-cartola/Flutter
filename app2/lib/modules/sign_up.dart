import 'package:app2/app/core/colors.dart';
import 'package:app2/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app2/widgets/text_input.dart';

class SignUp extends GetView {
  const SignUp({super.key});

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
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Center(child: Image(image: AssetImage('assets/logo.png'))),
                    const Text(
                      'Fill in the fields below',
                      style: TextStyle(
                        color: white, 
                        fontSize: 20),
                    ),
                    const TextInput(labelText: 'Name'),
                    const TextInput(labelText: 'Email'),
                    const TextInput(labelText: 'Password'),
                    const TextInput(labelText: 'Confirm password'),
                    Button(
                      width: 200,
                      text: 'Confirm registration',
                      color: darkBlue,
                      onPressed: () => Get.back(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
