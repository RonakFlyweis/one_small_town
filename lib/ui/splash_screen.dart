import 'dart:async';

import 'package:flutter/material.dart';
import 'package:training_app/routers/my_router.dart';
import 'package:get/get.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    Timer(
        const Duration(seconds: 5),
            () =>
                Get.toNamed('/welcomeScreen')

    );



  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Scaffold(
          body: Image.asset(
              'assets/images/logo.png',
          fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }


}
