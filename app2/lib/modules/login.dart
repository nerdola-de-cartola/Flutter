import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:app2/app/core/colors.dart';
import 'package:app2/modules/sign_up.dart';
import 'package:app2/modules/home.dart';
import 'package:app2/widgets/button.dart';
import 'package:app2/widgets/text_input.dart';
import 'package:app2/widgets/apple_button.dart';
import 'package:app2/widgets/google_button.dart';
import 'package:app2/widgets/help_button.dart';

class LoginPage extends GetView {
  const LoginPage({Key? key}) : super(key: key);

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
                children: [
                  const Center(
                    child: SizedBox(
                      width: 500.0,
                      height: 225.0,
                      child: Center(child: Image(image: AssetImage('assets/logo.png'))),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const TextInput(labelText: 'Email'),
                        const TextInput(labelText: 'Password'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Button(
                              text: 'Register',
                              color: darkBlue,
                              onPressed: () => Get.to(const SignUp()),
                            ),
                            Container(
                              height: 54,
                              width: 120,
                              padding: const EdgeInsets.all(1.0),
                              margin: const EdgeInsets.all(5),
                              child: FloatingActionButton(
                                onPressed: () => Get.to(Home()),
                                backgroundColor: darkBlue,
                                child: const Icon(Icons.arrow_forward),
                              ),
                            ),
                          ],
                        ),
                        // const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GoogleBtn1(onPressed: () {}),
                            AppleBtn1(
                              onPressed: () {},
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Esqueci minha senha',
                            style: TextStyle(
                              color: darkBlue,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            HelpButton(
                              radius: 70,
                              icon: const Icon(Icons.help),
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: homeGradient,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
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
