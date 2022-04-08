import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_app/network/api_provider.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

late User user;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.fitWidth,
                    ),
                    width: 260,
                    height: 170,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed('/loginScreen');
                          },
                          child: Container(
                            height: 36,
                            width: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: Colors.black54,
                                )),
                            child: Text(
                              'Login',
                              style: ButtonTextStyle,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed('/signupScreen');
                          },
                          child: Container(
                            height: 36,
                            width: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: Colors.black54,
                                )),
                            child: Text(
                              'Signup',
                              style: ButtonTextStyle,
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),

                //Email Field
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(width: 0.3, color: Colors.black54),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          blurRadius: 1.5,
                          spreadRadius: 1.5,
                          color: Colors.grey.shade200,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: _email,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(15.0),
                        hintText: 'Email',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                //Password Field
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(width: 0.3, color: Colors.black54),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          blurRadius: 1.5,
                          spreadRadius: 1.5,
                          color: Colors.grey.shade200,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: _password,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(15.0),
                        hintText: 'Password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),

                //LOgIn
                InkWell(
                  // borderRadius: BorderRadius.circular(3.0),
                  onTap: () async {
                    ApiProvider api = ApiProvider();
                    if (_formKey.currentState!.validate()) {
                      final data = {
                        "email": _email.text.toString(),
                        "password": _password.text.toString()
                      };
                      EasyLoading.show(
                          status: "Logging in..",
                          maskType: EasyLoadingMaskType.black);
                      dynamic body = await api.postMethodUnauthorized(
                          data, 'api/user/signin');
                      final statusCode = body.statusCode;
                      body = jsonDecode(body.body);
                      EasyLoading.dismiss();
                      if (statusCode == 200 || statusCode == 201) {
                        user = User(body["token"]);
                        print(user.bearerToken);
                        Get.toNamed('/homeScreen');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Enter correct email and password"),
                        ));
                      }
                    }
                  },
                  child: Container(
                    height: 30,
                    width: 110,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: MyAppTheme.buttonColor,
                    ),
                    child: Text(
                      'Login',
                      style: ButtonTextStyleW,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/forgetPassword');
                  },
                  child: Text(
                    'Forgot Password ?',
                    style: ButtonTextLight,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.03,
                ),

                //Co-op Members
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/patrionScreen');
                  },
                  child: Container(
                      height: 35,
                      width: 340,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: MyAppTheme.borderblue,
                            width: 2,
                          )),
                      child: Text(
                        'Co-op Members',
                        style: ButtonTextBlue,
                      )),
                ),

                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                //One- small Town members
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/patrionScreen');
                  },
                  child: Container(
                      height: 36,
                      width: 340,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: MyAppTheme.borderblue,
                            width: 2,
                          )),
                      child: Text(
                        'One Small Town Members',
                        style: ButtonTextBlue,
                      )),
                ),
                SizedBox(
                  height: screenSize.height * 0.03,
                ),
                Text(
                  'OR',
                  style: ButtonTextLight,
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Text(
                  'Login with',
                  style: ButtonTextLight,
                ),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      color: Colors.blueAccent,
                      child: Image.asset(
                        'assets/images/google.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Container(
                      height: 65,
                      width: 65,
                      child: Image.asset(
                        'assets/images/meta.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                Text(
                  'Privacy Policy',
                  style: ButtonTextLight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
