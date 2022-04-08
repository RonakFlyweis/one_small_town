import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_app/routers/my_router.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:training_app/ui/login_screen.dart';
import 'package:training_app/ui/signup_screen.dart';

import '../models/sign_up.dart';
import 'skills_ability.dart';
import 'package:get/get.dart';

class BankDetails extends StatefulWidget {
  final SignUp signUp;
  const BankDetails({Key? key, required this.signUp}) : super(key: key);

  @override
  _BankDetailsState createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  final _form = GlobalKey<FormState>();
  final _mobnumber = TextEditingController();
  final _emailaddress = TextEditingController();
  final _password = TextEditingController();
  final _qualification = TextEditingController();
  final _degree = TextEditingController();
  final _bankname = TextEditingController();
  final _accountName = TextEditingController();
  final _sortCode = TextEditingController();
  final _accountNumber = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: whiteColor,
          leading: IconButton(
              color: whiteColor,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: blackColor,
              )),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Form(
                    key: _form,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: screenSize.height * 0.01),

                            //Login & SignUp button
                            Row(
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
                                        borderRadius:
                                            BorderRadius.circular(20.0),
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
                                        borderRadius:
                                            BorderRadius.circular(20.0),
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
                            ),
                            SizedBox(height: screenSize.height * 0.02),
                            Row(
                              children: [
                                Text(
                                  'Fill all the fields marked with ',
                                  style: ButtonTextStyle,
                                ),
                                const Text(
                                  '*',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                            SizedBox(height: screenSize.height * 0.01),

                            //Mobile Number
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      width: 0.3, color: Colors.black54),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      blurRadius: 1.5,
                                      spreadRadius: 1.5,
                                      color: Colors.grey.shade200,
                                    ),
                                  ],
                                ),
                                child: TextFormField(
                                  controller: _mobnumber,
                                  keyboardType: TextInputType.text,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Field can\'t be empty';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(15.0),
                                    hintText: 'Mobile Number',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),

                            //Email
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      width: 0.3, color: Colors.black54),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      blurRadius: 1.5,
                                      spreadRadius: 1.5,
                                      color: Colors.grey.shade200,
                                    ),
                                  ],
                                ),
                                child: TextFormField(
                                  controller: _emailaddress,
                                  keyboardType: TextInputType.text,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Field can\'t be empty';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(15.0),
                                    hintText: 'Email Address',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),

                            //Password

                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      width: 0.3, color: Colors.black54),
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
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(15.0),
                                    hintText: 'Password',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),

                            //Qualifications
                            Text(
                              'Qualifications -----------------------------------',
                              style: ButtonTextStyle,
                            ),

                            //Level of Education
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      width: 0.3, color: Colors.black54),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      blurRadius: 1.5,
                                      spreadRadius: 1.5,
                                      color: Colors.grey.shade200,
                                    ),
                                  ],
                                ),
                                child: TextFormField(
                                  controller: _qualification,
                                  keyboardType: TextInputType.text,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Field can\'t be empty';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(15.0),
                                    hintText: 'Level of Education',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),

                            // Text(
                            //   'Do you have a degree from a recognized college/ ',
                            //   style: ButtonTextLight,
                            // ),

                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Do you have a degree from a recognized college/University? ',
                                    style: ButtonTextLight,
                                  ),
                                ),
                                const Text(
                                  '*',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),

                            //College/University
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      width: 0.3, color: Colors.black54),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      blurRadius: 1.5,
                                      spreadRadius: 1.5,
                                      color: Colors.grey.shade200,
                                    ),
                                  ],
                                ),
                                child: TextFormField(
                                  controller: _degree,
                                  keyboardType: TextInputType.text,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Field can\'t be empty';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(15.0),
                                    hintText: 'Eg. B.Tech, BCA, BBA',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  'Enter Bank Details ',
                                  style: ButtonTextLight,
                                ),
                                const Text(
                                  '*',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),

                            //Bank Name
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      width: 0.3, color: Colors.black54),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      blurRadius: 1.5,
                                      spreadRadius: 1.5,
                                      color: Colors.grey.shade200,
                                    ),
                                  ],
                                ),
                                child: TextFormField(
                                  controller: _bankname,
                                  keyboardType: TextInputType.text,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Field can\'t be empty';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(15.0),
                                    hintText: 'Bank Name',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),

                            //Account Name
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      width: 0.3, color: Colors.black54),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      blurRadius: 1.5,
                                      spreadRadius: 1.5,
                                      color: Colors.grey.shade200,
                                    ),
                                  ],
                                ),
                                child: TextFormField(
                                  controller: _accountName,
                                  keyboardType: TextInputType.text,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Field can\'t be empty';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(15.0),
                                    hintText: 'Account Name',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),

                            //Sort Code
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      width: 0.3, color: Colors.black54),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      blurRadius: 1.5,
                                      spreadRadius: 1.5,
                                      color: Colors.grey.shade200,
                                    ),
                                  ],
                                ),
                                child: TextFormField(
                                  controller: _sortCode,
                                  keyboardType: TextInputType.text,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Field can\'t be empty';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(15.0),
                                    hintText: 'Sort Code',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),

                            //Account Number
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      width: 0.3, color: Colors.black54),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      blurRadius: 1.5,
                                      spreadRadius: 1.5,
                                      color: Colors.grey.shade200,
                                    ),
                                  ],
                                ),
                                child: TextFormField(
                                  controller: _accountNumber,
                                  keyboardType: TextInputType.text,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Field can\'t be empty';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(15.0),
                                    hintText: 'Account Number',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: screenSize.height * 0.03,
                            ),

                            //Continue button
                            InkWell(
                              borderRadius: BorderRadius.circular(5.0),
                              onTap: () {
                                if (_form.currentState!.validate()) {
                                  signUp.number = _mobnumber.text.toString();
                                  signUp.email = _emailaddress.text.toString();
                                  signUp.password = _password.text.toString();
                                  signUp.education =
                                      _qualification.text.toString();
                                  signUp.bankName = _bankname.text.toString();
                                  signUp.accountName =
                                      _accountName.text.toString();
                                  signUp.sortCode = _sortCode.text.toString();
                                  signUp.accountNumber =
                                      _accountNumber.text.toString();

                                  Get.toNamed('/abilityScreen');
                                }
                              },
                              child: Container(
                                height: 40,
                                width: 340,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: MyAppTheme.borderblue,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Continue',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    )))));
  }
}
