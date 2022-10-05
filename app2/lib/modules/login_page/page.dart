import 'package:app2/app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app2/widgets/google_button.dart';

class LoginPage extends GetView {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: Container(
                    width: 500.0,
                    height: 250.0,
                    child: Image(
                      width: MediaQuery.of(context).size.height * 0.7,
                      height: MediaQuery.of(context).size.height * 0.07,
                      image: const AssetImage('assets/logo.png'),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.height * 0.7,
                  height: MediaQuery.of(context).size.height * 0.4,
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
                          labelStyle: const TextStyle(color: black),
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
                          labelStyle: const TextStyle(color: black),
                        ),
                      ),
                      // const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: darkBlue,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: darkBlue,
                            child: const Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                      // const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GoogleBtn1(onPressed: () {}),
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
    );
  }
}
