import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onboarding_login/constant/colors_const.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Expanded(
              child: Image.asset("assets/login.jpg"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Hey! Welcome back",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Sign in to your account ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your e-mail';
                            }

                            return null;
                          },
                          controller: emailController,
                          decoration: InputDecoration(
                            fillColor: ksecondColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: "dms@gmail.com",
                            hintStyle: TextStyle(
                                color: kprimaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your e-mail';
                            }

                            return null;
                          },
                          controller: emailController,
                          decoration: InputDecoration(
                            fillColor: ksecondColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: "**********",
                            hintStyle: TextStyle(
                                color: kprimaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            prefixIcon: Icon(Icons.security),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            color: kprimaryColor,
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Sing In",
                                style: TextStyle(fontSize: 20),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: kprimaryColor,
                                  onSurface: kprimaryColor,
                                  shadowColor: kprimaryColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "------OR------",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.google,
                              color: kprimaryColor,
                              size: 25,
                            ),
                            label: const Text(
                              'Sign in with Google',
                              style: TextStyle(
                                  color: kprimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
