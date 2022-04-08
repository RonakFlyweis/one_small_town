import 'package:flutter/material.dart';
import 'package:training_app/routers/my_router.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:training_app/ui/signup_screen.dart';
import 'package:training_app/ui/skills_capable.dart';
import 'package:get/get.dart';

class SkillsInterested extends StatefulWidget {
  const SkillsInterested({Key? key}) : super(key: key);

  @override
  _SkillsInterestedState createState() => _SkillsInterestedState();
}

class _SkillsInterestedState extends State<SkillsInterested> {
  final _form = GlobalKey<FormState>();
  bool initialYes = false;
  bool initialNo = false;

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
                                        'Are there any skills ans tasks that you would be interested in performing or learning',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  )
                                ]),

                            // Text(
                            //   'Are there any skills ans tasks that you would be',
                            //   style: ButtonTextStyle,
                            // ),
                            // Text(
                            //   'interested in performing or learning ',
                            //   style: ButtonTextStyle,
                            // ),

                            SizedBox(height: screenSize.height * 0.02),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Checkbox(
                                  checkColor: Colors.blue,
                                  activeColor: Colors.white60,
                                  value: this.initialYes,
                                  onChanged: (value) {
                                    setState(() {
                                      initialYes = value!;
                                    });
                                  },
                                ),
                                SizedBox(width: screenSize.width * 0.01),
                                Text('Yes', style: ButtonTextStyle),
                                SizedBox(width: screenSize.width * 0.02),
                                Checkbox(
                                  checkColor: Colors.blue,
                                  activeColor: Colors.white60,
                                  value: this.initialNo,
                                  onChanged: (value) {
                                    setState(() {
                                      this.initialNo = value!;
                                    });
                                  },
                                ),
                                SizedBox(width: screenSize.width * 0.01),
                                Text('No', style: ButtonTextStyle),
                              ],
                            ),

                            SizedBox(height: screenSize.height * 0.03),

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

                            SizedBox(height: screenSize.height * 0.03),

                            //Continue
                            InkWell(
                              borderRadius: BorderRadius.circular(5.0),
                              onTap: () {
                                List<String> performanceOrLearningSkills = [];
                                for (int i = 0; i < 5; i++) {
                                  if (check[i] == true) {
                                    performanceOrLearningSkills.add(skills[i]);
                                  }
                                  signUp.performingOrLearningSkills =
                                      performanceOrLearningSkills;
                                }
                                Get.toNamed('/skillsCapable');
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
                                  children: [
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
