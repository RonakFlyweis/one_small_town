import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:training_app/network/api_provider.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  // var firstController = TextEditingController();
  // var secondController = TextEditingController();
  // var thirdController = TextEditingController();
  // var fourthController = TextEditingController();
  // var fifthController = TextEditingController();
  // var sixthController = TextEditingController();
  final _email = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  //todo need to remember ,focusNode for textfocusing auto
  // FocusNode secondFocusNode = FocusNode();
  // FocusNode thirdFocusNode = FocusNode();
  // FocusNode fourthFocusNode = FocusNode();
  // FocusNode fifthFocusNode = FocusNode();
  // FocusNode sixthFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    ApiProvider api = ApiProvider();
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenSize.height * 0.04,
              ),
              Container(
                  height: 175,
                  width: 260,
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.fill,
                  )),
              SizedBox(
                height: screenSize.height * 0.03,
              ),
              Container(
                padding: EdgeInsets.all(15),
                height: 500,
                width: 335,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.black26,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Expanded(
                          child: Text(
                            'Enter the Email that you have registered previously',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: screenSize.height * 0.05,
                    ),

                    //Email Field
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 300,
                        height: 40,
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
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(12.0),
                            hintText: 'Enter mail here',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: screenSize.height * 0.1,
                    ),

                    //Send
                    InkWell(
                      borderRadius: BorderRadius.circular(10.0),
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          final body = {"email": _email.text.toString()};
                          EasyLoading.show(
                              status: 'Sending OTP...',
                              maskType: EasyLoadingMaskType.black);
                          dynamic response = await api.postMethodUnauthorized(
                              body, 'api/user/otpsend');
                          EasyLoading.dismiss();
                          Map<String, String> email = {
                            'email': _email.text.toString()
                          };
                          print(jsonDecode(response.body));
                          if (response.statusCode == 200 ||
                              response.statusCode == 201) {
                            Get.toNamed('/otpScreen', parameters: email);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Enter correct email")));
                          }
                        }

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SignupScreen()),
                        // );
                      },
                      child: Container(
                        height: 30,
                        width: 130,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: MyAppTheme.navColor,
                        ),
                        child: Text(
                          'Send',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),

                    // SizedBox(
                    //   height: screenSize.height * 0.1,
                    // ),
                    //
                    // // OTP Box Start
                    //
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: <Widget>[
                    //     // 1 Start
                    //     Container(
                    //       width: 50.0,
                    //       height: 50.0,
                    //       alignment: Alignment.center,
                    //       decoration: BoxDecoration(
                    //         color: whiteColor,
                    //         borderRadius: BorderRadius.circular(5.0),
                    //         border: Border.all(width: 1, color: Colors.black26),
                    //         boxShadow: <BoxShadow>[
                    //           BoxShadow(
                    //             blurRadius: 0.1,
                    //             spreadRadius: 0.1,
                    //             color: Colors.grey.shade200,
                    //           ),
                    //         ],
                    //       ),
                    //       child: TextField(
                    //         maxLength: 1,
                    //         controller: firstController,
                    //         // style: primaryColorHeadingStyle,
                    //         keyboardType: TextInputType.number,
                    //         decoration: const InputDecoration(
                    //           counterText: '',
                    //           contentPadding: EdgeInsets.all(18.0),
                    //           border: InputBorder.none,
                    //         ),
                    //         onChanged: (v) {
                    //           FocusScope.of(context)
                    //               .requestFocus(secondFocusNode);
                    //         },
                    //       ),
                    //     ),
                    //
                    //     // 2 Start
                    //     Container(
                    //       width: 50.0,
                    //       height: 50.0,
                    //       alignment: Alignment.center,
                    //       decoration: BoxDecoration(
                    //         color: whiteColor,
                    //         borderRadius: BorderRadius.circular(5.0),
                    //         border: Border.all(width: 1, color: Colors.black26),
                    //         boxShadow: <BoxShadow>[
                    //           BoxShadow(
                    //             blurRadius: 0.01,
                    //             spreadRadius: 0.01,
                    //             color: Colors.grey.shade200,
                    //           ),
                    //         ],
                    //       ),
                    //       child: TextField(
                    //         maxLength: 1,
                    //         focusNode: secondFocusNode,
                    //         controller: secondController,
                    //         // style: primaryColorHeadingStyle,
                    //         keyboardType: TextInputType.number,
                    //         decoration: const InputDecoration(
                    //           counterText: '',
                    //           contentPadding: EdgeInsets.all(18.0),
                    //           border: InputBorder.none,
                    //         ),
                    //         onChanged: (v) {
                    //           FocusScope.of(context)
                    //               .requestFocus(thirdFocusNode);
                    //         },
                    //       ),
                    //     ),
                    //
                    //     // 3 Start
                    //     Container(
                    //       width: 50.0,
                    //       height: 50.0,
                    //       alignment: Alignment.center,
                    //       decoration: BoxDecoration(
                    //         color: whiteColor,
                    //         borderRadius: BorderRadius.circular(5.0),
                    //         border: Border.all(width: 1, color: Colors.black26),
                    //         boxShadow: <BoxShadow>[
                    //           BoxShadow(
                    //             blurRadius: 0.01,
                    //             spreadRadius: 0.01,
                    //             color: Colors.grey.shade200,
                    //           ),
                    //         ],
                    //       ),
                    //       child: TextField(
                    //         maxLength: 1,
                    //         focusNode: thirdFocusNode,
                    //         controller: thirdController,
                    //         // style: primaryColorHeadingStyle,
                    //         keyboardType: TextInputType.number,
                    //         decoration: const InputDecoration(
                    //           counterText: '',
                    //           contentPadding: EdgeInsets.all(18.0),
                    //           border: InputBorder.none,
                    //         ),
                    //         onChanged: (v) {
                    //           FocusScope.of(context)
                    //               .requestFocus(fourthFocusNode);
                    //         },
                    //       ),
                    //     ),
                    //
                    //     // 4 Start
                    //     Container(
                    //       width: 50.0,
                    //       height: 50.0,
                    //       alignment: Alignment.center,
                    //       decoration: BoxDecoration(
                    //         color: whiteColor,
                    //         borderRadius: BorderRadius.circular(5.0),
                    //         border: Border.all(width: 1, color: Colors.black26),
                    //         boxShadow: <BoxShadow>[
                    //           BoxShadow(
                    //             blurRadius: 0.01,
                    //             spreadRadius: 0.01,
                    //             color: Colors.grey.shade200,
                    //           ),
                    //         ],
                    //       ),
                    //       child: TextField(
                    //         maxLength: 1,
                    //         focusNode: fourthFocusNode,
                    //         controller: fourthController,
                    //         // style: primaryColorHeadingStyle,
                    //         keyboardType: TextInputType.number,
                    //         decoration: const InputDecoration(
                    //           counterText: '',
                    //           contentPadding: EdgeInsets.all(18.0),
                    //           border: InputBorder.none,
                    //         ),
                    //         onChanged: (v) {
                    //           FocusScope.of(context)
                    //               .requestFocus(fifthFocusNode);
                    //         },
                    //       ),
                    //     ),
                    //
                    //     //5 start
                    //     Container(
                    //       width: 50.0,
                    //       height: 50.0,
                    //       alignment: Alignment.center,
                    //       decoration: BoxDecoration(
                    //         color: whiteColor,
                    //         borderRadius: BorderRadius.circular(5.0),
                    //         border: Border.all(width: 1, color: Colors.black26),
                    //         boxShadow: <BoxShadow>[
                    //           BoxShadow(
                    //             blurRadius: 0.01,
                    //             spreadRadius: 0.01,
                    //             color: Colors.grey.shade200,
                    //           ),
                    //         ],
                    //       ),
                    //       child: TextField(
                    //         maxLength: 1,
                    //         focusNode: fifthFocusNode,
                    //         controller: fifthController,
                    //         // style: primaryColorHeadingStyle,
                    //         keyboardType: TextInputType.number,
                    //         decoration: const InputDecoration(
                    //           counterText: '',
                    //           contentPadding: EdgeInsets.all(18.0),
                    //           border: InputBorder.none,
                    //         ),
                    //         onChanged: (v) {
                    //           FocusScope.of(context)
                    //               .requestFocus(sixthFocusNode);
                    //         },
                    //       ),
                    //     ),
                    //
                    //     //6 start
                    //     Container(
                    //       width: 50.0,
                    //       height: 50.0,
                    //       alignment: Alignment.center,
                    //       decoration: BoxDecoration(
                    //         color: whiteColor,
                    //         borderRadius: BorderRadius.circular(5.0),
                    //         border: Border.all(width: 1, color: Colors.black26),
                    //         boxShadow: <BoxShadow>[
                    //           BoxShadow(
                    //             blurRadius: 0.01,
                    //             spreadRadius: 0.01,
                    //             color: Colors.grey.shade200,
                    //           ),
                    //         ],
                    //       ),
                    //       child: TextField(
                    //         maxLength: 1,
                    //         focusNode: sixthFocusNode,
                    //         controller: sixthController,
                    //         // style: primaryColorHeadingStyle,
                    //         keyboardType: TextInputType.number,
                    //         decoration: const InputDecoration(
                    //           counterText: '',
                    //           contentPadding: EdgeInsets.all(18.0),
                    //           border: InputBorder.none,
                    //         ),
                    //         onChanged: (v) {},
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    //
                    // //OTP Box End
                    //
                    // // SizedBox(
                    // //   height: screenSize.height * 0.1,
                    // // ),
                    //
                    // Padding(
                    //   padding: const EdgeInsets.all(15.0),
                    //   child: Container(
                    //     width: 300,
                    //     height: 40,
                    //     decoration: BoxDecoration(
                    //       color: whiteColor,
                    //       borderRadius: BorderRadius.circular(5.0),
                    //       border: Border.all(width: 0.3, color: Colors.black54),
                    //       boxShadow: <BoxShadow>[
                    //         BoxShadow(
                    //           blurRadius: 1.5,
                    //           spreadRadius: 1.5,
                    //           color: Colors.grey.shade200,
                    //         ),
                    //       ],
                    //     ),
                    //     child: TextFormField(
                    //       controller: _password,
                    //       keyboardType: TextInputType.text,
                    //       validator: (value) {
                    //         if (value!.isEmpty) {
                    //           return 'Field can\'t be empty';
                    //         }
                    //         return null;
                    //       },
                    //       decoration: const InputDecoration(
                    //         contentPadding: EdgeInsets.all(12.0),
                    //         hintText: 'Enter new password',
                    //         border: InputBorder.none,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: screenSize.height * 0.1,
                    // ),
                    //
                    // //verify
                    // InkWell(
                    //   borderRadius: BorderRadius.circular(10.0),
                    //   onTap: () {
                    //     // Navigator.push(
                    //     //   context,
                    //     //   MaterialPageRoute(builder: (context) => SignupScreen()),
                    //     // );
                    //   },
                    //   child: Container(
                    //     height: 30,
                    //     width: 130,
                    //     alignment: Alignment.center,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(4.0),
                    //       color: MyAppTheme.btnColor,
                    //     ),
                    //     child: Text(
                    //       'Change Password',
                    //       style: TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 15,
                    //           fontWeight: FontWeight.w400),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
