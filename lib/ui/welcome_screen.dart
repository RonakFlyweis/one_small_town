

import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:training_app/ui/login_screen.dart';
import 'package:training_app/ui/signup_screen.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(height: screenSize.height * 0.01,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 250,
                  width: 380,
                  child:  Image.asset(
                      'assets/images/logo.png',
                    fit: BoxFit.fitWidth,
                  ) ,
                ),
              ),
              SizedBox(height: screenSize.height * 0.05,),
              Text('Already Have an Account..!',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: screenSize.height * 0.02,),
              InkWell(
                borderRadius: BorderRadius.circular(3.0),
                onTap: ()  {
                  Get.toNamed('/loginScreen');

                },
                child: Container(
                  height: 40,
                  width: 350,
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
              SizedBox(height: screenSize.height * 0.02,),
              Text('OR',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),),
              SizedBox(height: screenSize.height * 0.02,),
              InkWell(
                borderRadius: BorderRadius.circular(3.0),
                onTap: ()  {
                  Get.toNamed('/signupScreen');

                },
                child: Container(
                  height: 40,
                  width: 350,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: MyAppTheme.buttonColor2,
                  ),
                  child: Text(
                    'Create New Account',
                    style: ButtonTextStyleW,
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.02,),



            ],
          ),
        ),
      ),


    );
  }
}
