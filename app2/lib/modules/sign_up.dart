import 'package:app2/app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                width: MediaQuery.of(context).size.height * 0.5,
                height: MediaQuery.of(context).size.height * 0.85,
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
                        labelText: 'Name',
                        labelStyle: const TextStyle(color: black, fontSize: 18),
                      ),
                    ),
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
                        labelText: 'Confirm password',
                        labelStyle: const TextStyle(color: black, fontSize: 18),
                      ),
                    ),
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
                        onPressed: () => Get.back(),
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
