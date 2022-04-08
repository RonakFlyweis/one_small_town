import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_app/routers/my_router.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:training_app/ui/signup_screen.dart';
import 'package:training_app/ui/skills_interested.dart';

import 'login_screen.dart';
import 'package:get/get.dart';

class AbilityScreen extends StatefulWidget {
  const AbilityScreen({Key? key}) : super(key: key);

  @override
  _AbilityScreenState createState() => _AbilityScreenState();
}

class _AbilityScreenState extends State<AbilityScreen> {
  final _form = GlobalKey<FormState>();
  final _skill1 = TextEditingController();
  final _skill2 = TextEditingController();
  final _skill3 = TextEditingController();
  final _skill4 = TextEditingController();
  final _skill5 = TextEditingController();

  bool? valuefirst = false;

  bool value = false;

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
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
            key: _form,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Expanded(
                          child: Text(
                              'Please fill in any special ability, training or skills you have.',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        )
                      ]),

                  //Skill 1
                  Padding(
                    padding: EdgeInsets.all(15.0),
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
                        controller: _skill1,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field can\'t be empty';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          hintText: 'Skill 1',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  // Text(
                  //   'Profiency ',
                  //   style: ButtonTextmedium,
                  // ),

                  //Check Boxes
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Average',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Good',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Very Good',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Expert',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     // SizedBox(width: screenSize.width * 0.02),
                  //     // Checkbox(
                  //     //   checkColor: Colors.blue,
                  //     //   activeColor: Colors.white60,
                  //     //   value: this.valuefirst,
                  //     //   onChanged: ( value) {
                  //     //     setState(() {
                  //     //       this.valuefirst = value!;
                  //     //     });
                  //     //   },
                  //     // ),
                  //     // SizedBox(width: screenSize.width * 0.01),
                  //     // Text ('No', style: ButtonTextStyle),
                  //   ],
                  // ),

                  // Skill 2
                  Padding(
                    padding: EdgeInsets.all(15.0),
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
                        controller: _skill2,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field can\'t be empty';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          hintText: 'Skill 2',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  // Text(
                  //   'Profiency ',
                  //   style: ButtonTextmedium,
                  // ),
                  //
                  // //Check Boxes
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Average',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Good',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Very Good',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Expert',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     // SizedBox(width: screenSize.width * 0.02),
                  //     // Checkbox(
                  //     //   checkColor: Colors.blue,
                  //     //   activeColor: Colors.white60,
                  //     //   value: this.valuefirst,
                  //     //   onChanged: ( value) {
                  //     //     setState(() {
                  //     //       this.valuefirst = value!;
                  //     //     });
                  //     //   },
                  //     // ),
                  //     // SizedBox(width: screenSize.width * 0.01),
                  //     // Text ('No', style: ButtonTextStyle),
                  //   ],
                  // ),

                  //Skill 3
                  Padding(
                    padding: EdgeInsets.all(15.0),
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
                        controller: _skill3,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field can\'t be empty';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          hintText: 'Skill 3',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  // Text(
                  //   'Profiency ',
                  //   style: ButtonTextmedium,
                  // ),
                  //
                  // //Check Boxes
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Average',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Good',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Very Good',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Expert',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     // SizedBox(width: screenSize.width * 0.02),
                  //     // Checkbox(
                  //     //   checkColor: Colors.blue,
                  //     //   activeColor: Colors.white60,
                  //     //   value: this.valuefirst,
                  //     //   onChanged: ( value) {
                  //     //     setState(() {
                  //     //       this.valuefirst = value!;
                  //     //     });
                  //     //   },
                  //     // ),
                  //     // SizedBox(width: screenSize.width * 0.01),
                  //     // Text ('No', style: ButtonTextStyle),
                  //   ],
                  // ),

                  //Skill 4
                  Padding(
                    padding: EdgeInsets.all(15.0),
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
                        controller: _skill4,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field can\'t be empty';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          hintText: 'Skill 4',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  // Text(
                  //   'Profiency ',
                  //   style: ButtonTextmedium,
                  // ),
                  //
                  // //Check Boxes
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Average',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Good',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Very Good',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Expert',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     // SizedBox(width: screenSize.width * 0.02),
                  //     // Checkbox(
                  //     //   checkColor: Colors.blue,
                  //     //   activeColor: Colors.white60,
                  //     //   value: this.valuefirst,
                  //     //   onChanged: ( value) {
                  //     //     setState(() {
                  //     //       this.valuefirst = value!;
                  //     //     });
                  //     //   },
                  //     // ),
                  //     // SizedBox(width: screenSize.width * 0.01),
                  //     // Text ('No', style: ButtonTextStyle),
                  //   ],
                  // ),

                  //Skill 5
                  Padding(
                    padding: EdgeInsets.all(15.0),
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
                        controller: _skill5,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field can\'t be empty';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          hintText: 'Skill 5',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  // Text(
                  //   'Profiency ',
                  //   style: ButtonTextmedium,
                  // ),
                  //
                  // //Check Boxes
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Average',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Good',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Very Good',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     Expanded(
                  //       child: Checkbox(
                  //         checkColor: Colors.blue,
                  //         activeColor: Colors.white60,
                  //         value: this.valuefirst,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             this.valuefirst = value!;
                  //           });
                  //         },
                  //       ),
                  //     ),
                  //     Text(
                  //       'Expert',
                  //       style: TextStyle(
                  //         fontSize: 15.0,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //
                  //     // SizedBox(width: screenSize.width * 0.02),
                  //     // Checkbox(
                  //     //   checkColor: Colors.blue,
                  //     //   activeColor: Colors.white60,
                  //     //   value: this.valuefirst,
                  //     //   onChanged: ( value) {
                  //     //     setState(() {
                  //     //       this.valuefirst = value!;
                  //     //     });
                  //     //   },
                  //     // ),
                  //     // SizedBox(width: screenSize.width * 0.01),
                  //     // Text ('No', style: ButtonTextStyle),
                  //   ],
                  // ),

                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  //Continue
                  InkWell(
                    borderRadius: BorderRadius.circular(5.0),
                    onTap: () {
                      // if (_form.currentState!.validate()) {
                        List<String> skills = [
                          _skill1.text.toString(),
                          _skill2.text.toString(),
                          _skill3.text.toString(),
                          _skill4.text.toString(),
                          _skill5.text.toString()
                        ];
                        signUp.skills = skills;
                        Get.toNamed('/skillsInterested');
                      // }
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      height: 40,
                      width: 370,
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
                            style: TextStyle(color: Colors.white, fontSize: 18),
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
          ),
        ),
      ),
    );
  }
}

