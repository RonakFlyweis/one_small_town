import 'package:flutter/material.dart';
import 'package:training_app/routers/my_router.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:training_app/ui/signup_screen.dart';
import 'package:training_app/ui/accept_terms.dart';

import 'login_screen.dart';
import 'package:get/get.dart';

class SkillsCapable extends StatefulWidget {
  const SkillsCapable({Key? key}) : super(key: key);

  @override
  _SkillsCapableState createState() => _SkillsCapableState();
}

class _SkillsCapableState extends State<SkillsCapable> {
  final _form = GlobalKey<FormState>();
  final _skillController = TextEditingController();
  List<bool> check = [false, false, false, false, false];
  List<String> skills = ['Skill 1', 'Skill 2', 'Skill 3', 'Skill 4', 'Skill 5'];

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
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Form(
                      key: _form,
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
                            SizedBox(height: screenSize.height * 0.03),

                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Expanded(
                                    child: Text(
                                        "Skills that you are capable of performing or        Learning ",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  )
                                ]),

                            SizedBox(height: screenSize.height * 0.04),

                            //Skill 1
                            Container(
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
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('    ${skills[0]}'),
                                    Checkbox(
                                      checkColor: Colors.blue,
                                      activeColor: Colors.white60,
                                      value: check[0],
                                      onChanged: (value) {
                                        setState(() {
                                          check[0] = value!;
                                        });
                                      },
                                    )
                                  ],
                                )),

                            SizedBox(height: screenSize.height * 0.02),

                            //Skill 2
                            Container(
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
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('    ${skills[1]}'),
                                    Checkbox(
                                      checkColor: Colors.blue,
                                      activeColor: Colors.white60,
                                      value: check[1],
                                      onChanged: (value) {
                                        setState(() {
                                          check[1] = value!;
                                        });
                                      },
                                    )
                                  ],
                                )),

                            SizedBox(height: screenSize.height * 0.02),

                            //Skill 3
                            Container(
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
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('    ${skills[2]}'),
                                    Checkbox(
                                      checkColor: Colors.blue,
                                      activeColor: Colors.white60,
                                      value: check[2],
                                      onChanged: (value) {
                                        setState(() {
                                          check[2] = value!;
                                        });
                                      },
                                    )
                                  ],
                                )),

                            SizedBox(height: screenSize.height * 0.02),

                            //Skill 4
                            Container(
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
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('    ${skills[3]}'),
                                    Checkbox(
                                      checkColor: Colors.blue,
                                      activeColor: Colors.white60,
                                      value: check[3],
                                      onChanged: (value) {
                                        setState(() {
                                          check[3] = value!;
                                        });
                                      },
                                    )
                                  ],
                                )),

                            SizedBox(height: screenSize.height * 0.02),

                            //Skill 5
                            Container(
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
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('    ${skills[4]}'),
                                    Checkbox(
                                      checkColor: Colors.blue,
                                      activeColor: Colors.white60,
                                      value: check[4],
                                      onChanged: (value) {
                                        setState(() {
                                          check[4] = value!;
                                        });
                                      },
                                    )
                                  ],
                                )),

                            SizedBox(height: screenSize.height * 0.02),

                            Container(
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
                                controller: _skillController,
                                keyboardType: TextInputType.text,
                                validator: (value) {
                                  // if (value!.isEmpty) {
                                  //   return 'Field can\'t be empty';
                                  // }
                                  // return null;
                                },
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(15.0),
                                  hintText: 'Mention other skills',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),

                            SizedBox(height: screenSize.height * 0.1),

                            //Continue
                            InkWell(
                              borderRadius: BorderRadius.circular(5.0),
                              onTap: () {
                                List<String> capableSkills = [];
                                for (int i = 0; i < 5; i++) {
                                  if (check[i] == true) {
                                    capableSkills.add(skills[i]);
                                  }
                                  signUp.capableSkills = capableSkills;
                                }
                                if (_skillController.text.toString() != "") {
                                  signUp.capableSkills
                                      .add(_skillController.text.toString());
                                }

                                Get.toNamed('/acceptTnC');
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
                                      'Continue   ',
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

                            SizedBox(height: screenSize.height * 0.01),
                          ]),
                    )))));
  }
}
