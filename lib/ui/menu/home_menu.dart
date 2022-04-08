import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:training_app/ui/menu/help_screen.dart';
import 'package:get/get.dart';

class MenuHome extends StatefulWidget {
  const MenuHome({Key? key}) : super(key: key);

  @override
  _MenuHomeState createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: MyAppTheme.whiteColor,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: screenSize.height * 0.02,
          ),

          //Appbar menu
          Container(
            width: 415,
            height: 85,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: MyAppTheme.navColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    height: 40,
                    width: 30,
                    child: Image.asset(
                      'assets/images/menu.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  width: screenSize.width * 0.3,
                ),
                const Text('MENU',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
          ),

          SizedBox(
            height: screenSize.height * 0.02,
          ),

          //home
          GestureDetector(
            onTap: () {
              Get.toNamed('/welcomeUser');
            },
            child: Row(
              children: [
                SizedBox(
                  width: screenSize.width * 0.1,
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    'assets/images/home.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.08,
                ),
                Text(
                  'Home',
                  style: ButtonTextmediumM,
                )
              ],
            ),
          ),

          SizedBox(
            height: screenSize.height * 0.03,
          ),

          //payments
          GestureDetector(
            onTap: () {
              Get.toNamed('/wallet');
            },
            child: Row(
              children: [
                SizedBox(
                  width: screenSize.width * 0.1,
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    'assets/images/payment.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.08,
                ),
                Text(
                  'Payments',
                  style: ButtonTextmediumM,
                )
              ],
            ),
          ),

          SizedBox(
            height: screenSize.height * 0.03,
          ),

          //jobs
          GestureDetector(
            onTap: () {
              Get.toNamed('/welcomeUser');
            },
            child: Row(
              children: [
                SizedBox(
                  width: screenSize.width * 0.1,
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    'assets/images/jobs.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.08,
                ),
                Text(
                  'Jobs & Voluntary Work',
                  style: ButtonTextmediumM,
                )
              ],
            ),
          ),

          SizedBox(
            height: screenSize.height * 0.03,
          ),

          //councils
          GestureDetector(
            onTap: () {
              Get.toNamed('/councilScreen');
            },
            child: Row(
              children: [
                SizedBox(
                  width: screenSize.width * 0.1,
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    'assets/images/councils.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.08,
                ),
                Text(
                  'Councils',
                  style: ButtonTextmediumM,
                )
              ],
            ),
          ),

          SizedBox(
            height: screenSize.height * 0.03,
          ),

          //settings
          GestureDetector(
            onTap: () {
              Get.toNamed('/settings');
            },
            child: Row(
              children: [
                SizedBox(
                  width: screenSize.width * 0.1,
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    'assets/images/setting.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.08,
                ),
                Text(
                  'Settings',
                  style: ButtonTextmediumM,
                )
              ],
            ),
          ),

          SizedBox(
            height: screenSize.height * 0.03,
          ),

          //Help Supoort
          GestureDetector(
            onTap: () {
              Get.toNamed('/helpnSupport');
            },
            child: Row(
              children: [
                SizedBox(
                  width: screenSize.width * 0.1,
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    'assets/images/helpsupport.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.08,
                ),
                Text(
                  'Help & Support',
                  style: ButtonTextmediumM,
                )
              ],
            ),
          ),

          SizedBox(
            height: screenSize.height * 0.03,
          ),

          //terms
          GestureDetector(
            onTap: () {
              Get.toNamed('/termsC');
            },
            child: Row(
              children: [
                SizedBox(
                  width: screenSize.width * 0.1,
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    'assets/images/tnc.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.08,
                ),
                Text(
                  'Terms and conditions',
                  style: ButtonTextmediumM,
                )
              ],
            ),
          ),

          SizedBox(
            height: screenSize.height * 0.03,
          ),

          //privacy
          GestureDetector(
            onTap: () {
              Get.toNamed('/privacyPolicy');
            },
            child: Row(
              children: [
                SizedBox(
                  width: screenSize.width * 0.1,
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    'assets/images/privacypolicy.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.08,
                ),
                Text(
                  'Privacy Policy',
                  style: ButtonTextmediumM,
                )
              ],
            ),
          ),

          SizedBox(
            height: screenSize.height * 0.03,
          ),

          //Logout
          GestureDetector(
            onTap: () {
              Get.offAllNamed('/loginScreen');
            },
            child: Row(
              children: [
                SizedBox(
                  width: screenSize.width * 0.1,
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    'assets/images/logout.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.08,
                ),
                Text(
                  'Logout',
                  style: ButtonTextmediumM,
                )
              ],
            ),
          ),

          SizedBox(
            height: screenSize.height * 0.03,
          ),
        ]),
      ),
    );
  }
}
