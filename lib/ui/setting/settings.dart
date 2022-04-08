

import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

import 'faq_screen.dart';
import 'package:get/get.dart';


class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenSize.height * 0.03,
            ),

            //Appbar menu
            Container(
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
                  IconButton(
                      color: whiteColor,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: MyAppTheme.whiteColor,
                      )),
                  SizedBox(
                    width: screenSize.width * 0.22,
                  ),

                  const Text('Settings',
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

            Container(
              height: 700,
              width: 400,
              decoration: BoxDecoration( border: Border.all(
                  color: Colors.white,
              ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children:  <Widget>[
                  ListTile(
                    leading: Icon(Icons.person, color: Colors.black,size: 25,),
                    title: Text('Personal Details', style:ButtonTextmedium,),

                  ),

                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),

                  GestureDetector(
                    onTap: (){
                      Get.toNamed('/faqScreen');

                    },

                    child: ListTile(
                      leading: const Icon(Icons.help,color: Colors.black,size: 26),
                      title: Text('F.A.Q',style:ButtonTextmedium),

                    ),
                  ),

                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),

                  ListTile(
                    leading:   Icon(Icons.update_sharp,color: Colors.black,size: 26),
                    title: Text('Check for App Updates',style:ButtonTextmedium),
                    subtitle: Text('This is version 0.0.1', style: TextStyle(color: Colors.blue,fontSize: 12),),
                  ),

                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),

                  ListTile(
                    leading: const Icon(Icons.notifications_active,color: Colors.black,size: 28),
                    title: Text('Notification Setting',style:ButtonTextmedium),

                  ),

                  SizedBox(
                    height: screenSize.height * 0.02,
                  ), ListTile(
                    leading: const Icon(Icons.help,color: Colors.black,size: 26),
                    title: Text('F.A.Q',style:ButtonTextmedium),

                  ),

                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),

                  ListTile(
                    leading: const Icon(Icons.language,color: Colors.black,size: 26),
                    title: Text('Change Language',style:ButtonTextmedium),

                  ),

                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),

                   ListTile(
                    leading: Icon(Icons.help_center,color: Colors.black,size: 28),
                    title: Text('Visit Help Center',style:ButtonTextmedium),
                      ),

                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),

                  ListTile(
                    leading: Icon(Icons.money_off,color: Colors.black,size: 28),
                    title: Text('Tax Declaration',style:ButtonTextmedium),
                      ),

                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),

                  ListTile(
                    leading: Icon(Icons.power_settings_new_outlined,color: Colors.black,size: 25),
                    title: Text('Logout',style:ButtonTextmedium),
                      ),

                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),






                ],
              ),
            )




          ],
        ),
      ),
    );
  }
}
