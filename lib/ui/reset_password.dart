
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _newPswd = TextEditingController();
  final _confPswd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: screenSize.height * 0.04,),
                Container(
                    height: 175,
                    width: 260,
                    child: Image.asset('assets/images/logo.png', fit: BoxFit.fill,)
                ),

                SizedBox(height: screenSize.height * 0.15,),

                Container(
                  padding: EdgeInsets.all(20),
                  height: 300,
                  width: 360,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.black26,
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Reset your Password',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),

                      SizedBox(height: screenSize.height * 0.03,),

                      //New Password Field
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
                            controller: _newPswd,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(12.0),
                              hintText: 'New Password',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),



                      //Confirm Password Field
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
                            controller: _confPswd,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(12.0),
                              hintText: 'Confirm New Password',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: screenSize.height * 0.01,),


                      //Reset
                      InkWell(
                        borderRadius: BorderRadius.circular(10.0),
                        onTap: ()  {
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
                          child: const Text(
                            'Reset',
                            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),

                      SizedBox(height: screenSize.height * 0.01,),



                    ],) ,

                ),

              ],
            ),
          ),
        )
    );
  }
}
