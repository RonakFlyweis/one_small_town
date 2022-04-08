
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  _NotificationSettingState createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: MyAppTheme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
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
                    width: screenSize.width * 0.15,
                  ),

                  const Text('Notification Setting',
                      style: TextStyle(
                        fontSize: 18.0,
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
              height: 500,
              width: 380,
              padding: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                color: whiteColor,

                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  Text('Marketing Updates', style: ButtonTextStyle,),

                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Email',style: TextStyle(
                        fontSize: 18.0,
                        color: MyAppTheme.text_bg_Color,
                        fontWeight: FontWeight.w400,
                      )),

                      Switch(
                          value: isSwitched,
                          onChanged: (value){
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        activeTrackColor: Colors.blueAccent,
                        activeColor: Colors.white,
                      )
                    ],
                  ),

                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),

                  Text('Job Requests', style: ButtonTextStyle,),

                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Email',style: TextStyle(
                        fontSize: 18.0,
                        color: MyAppTheme.text_bg_Color,
                        fontWeight: FontWeight.w400,
                      )),

                      Switch(
                        value: isSwitched,
                        onChanged: (value){
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        activeTrackColor: Colors.blueAccent,
                        activeColor: Colors.white,
                      )
                    ],
                  ),

                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Notification',style: TextStyle(
                        fontSize: 18.0,
                        color: MyAppTheme.text_bg_Color,
                        fontWeight: FontWeight.w400,
                      )),

                      Switch(
                        value: isSwitched,
                        onChanged: (value){
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        activeTrackColor: Colors.blueAccent,
                        activeColor: Colors.white,
                      )
                    ],
                  ),

                  Text('Daily Job Matches', style: ButtonTextStyle,),

                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),


                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Notification',style: TextStyle(
                        fontSize: 18.0,
                        color: MyAppTheme.text_bg_Color,
                        fontWeight: FontWeight.w400,
                      )),

                      Switch(
                        value: isSwitched,
                        onChanged: (value){
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        activeTrackColor: Colors.blueAccent,
                        activeColor: Colors.white,
                      )
                    ],
                  ),
                ],
              )
            )




          ],
        ),
      ),
    );
  }
}
