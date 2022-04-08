
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

import 'package:get/get.dart';


class CouncilScreen extends StatefulWidget {
  const CouncilScreen({Key? key}) : super(key: key);

  @override
  _CouncilScreenState createState() => _CouncilScreenState();
}

class _CouncilScreenState extends State<CouncilScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: MyAppTheme.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenSize.height * 0.02,
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
                      width: screenSize.width * 0.2,
                    ),

                    const Text('Councils',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),

                    SizedBox(
                      width: screenSize.width * 0.25,
                    ),

                    GestureDetector(
                      onTap: (){},
                      child: const Icon(
                        Icons.settings,
                        size: 30,
                        color: MyAppTheme.whiteColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.35,
              ),

              InkWell(
                borderRadius: BorderRadius.circular(5.0),
                onTap: ()  {
                  Get.toNamed('/votingScreen');
                },
                child: Container(
                  // padding: EdgeInsets.only(left: 20),
                  height: 40,
                  width: 310,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: MyAppTheme.buttonColor,
                  ),
                  child: Text(
                    'Voting and Elections',
                    style: TextStyle(color: Colors.white,fontSize: 18),
                  ),

                ),

              ),
              SizedBox(
                height: screenSize.height * 0.03,
              ),

              GestureDetector(
               onTap: (){

                 Get.toNamed('/womensCouncil');

               },

               child: Container(
                    // padding: EdgeInsets.only(left: 20),
                    height: 40,
                    width: 310,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: MyAppTheme.councilbtn,
                    ),
                    child: Image.asset('assets/images/meetingbtn.png',fit: BoxFit.fitWidth,),


                    ),
             ),






            ]),
      ),
    );
  }
}
