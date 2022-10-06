import 'package:app2/app/core/colors.dart';
import 'package:app2/modules/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Center(
                    child: SizedBox(
                      width: 500.0,
                      height: 250.0,
                      child: Image(
                        width: MediaQuery.of(context).size.height * 0.7,
                        height: MediaQuery.of(context).size.height * 1,
                        image: const AssetImage('assets/logo.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.5,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextFormField(
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
                            labelText: 'Email',
                            labelStyle: const TextStyle(color: black, fontSize: 18),
                          ),
                        ),
                        // const SizedBox(height: 20),
                        TextFormField(
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
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: black, fontSize: 18),
                          ),
                        ),
                        // const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 54,
                              width: 120,
                              padding: const EdgeInsets.all(8.0),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: darkBlue,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextButton(
                                onPressed: () => Get.to(const SignUp()),
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)))),
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 54,
                              width: 120,
                              padding: const EdgeInsets.all(1.0),
                              margin: const EdgeInsets.all(5),
                              child: FloatingActionButton(
                                onPressed: () {},
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
