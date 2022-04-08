
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyAppTheme.navColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color:  MyAppTheme.navColor ,
                  borderRadius: BorderRadius.all(Radius.circular(1.0)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Container(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          'assets/images/menu.png', fit: BoxFit.fitWidth,),
                      ),
                      onTap: (){} ,
                    ),

                    SizedBox(width: screenSize.width * 0.22,),
                    Text('Calender', style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )),

                    SizedBox(width: screenSize.width * 0.12,),

                    Icon(Icons.settings,size: 30,color: MyAppTheme.whiteColor,)
                  ],
                ),

              ),

              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(60.0)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: screenSize.height * 0.01,),

                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 125,
                            padding: EdgeInsets.all(25),
                            child: Image.asset(
                              'assets/images/logo.png', fit: BoxFit.fitWidth,),
                          ),

                          SizedBox(width: screenSize.width * 0.1,),

                          Column(
                            children: [
                              Text('Employee Name',style: ButtonTextML,),

                              SizedBox(height: screenSize.height * 0.01,),

                              Text('Department',style: ButtonTextML,),

                            ],
                          ),
                          SizedBox(width: screenSize.width * 0.02,),
                          Column(
                            children: [
                              const CircleAvatar(radius: 30,
                                backgroundColor: MyAppTheme.navColor,
                                child: Icon(Icons.account_circle_outlined,size: 50,),),

                              SizedBox(height: screenSize.height * 0.01,),

                              const Text('Employee_Id Number', style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,),)
                            ],
                          ),

                        ],
                      ),

                      SizedBox(height: screenSize.height * 0.02,),

                      Container(
                        height: 350,
                        width: 380,
                        child: Image.asset(
                          'assets/images/Cdates.png', fit: BoxFit.fitWidth,),
                      ),
                      SizedBox(height: screenSize.height * 0.02,),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              height: 65,
                              width: 180,
                              decoration: const BoxDecoration(
                                color: MyAppTheme.rowbox1,
                                borderRadius: BorderRadius.all(Radius.circular(7)),
                              ),
                              child: Column(
                                children:   [
                                  SizedBox(height: screenSize.height * 0.02,),
                                  Text('Job',) ,
                                  Text('Job title',)
                                ],
                              ),
                            ),
                            SizedBox(width: screenSize.width * 0.02,),
                            Container(
                              height: 65,
                              width: 180,

                              decoration: const BoxDecoration(
                                color: MyAppTheme.rowbox2,
                                borderRadius: BorderRadius.all(Radius.circular(7)),
                              ),
                              child: Column(
                                children:   [
                                  SizedBox(height: screenSize.height * 0.02,),
                                  Text('Shift Timing ',) ,
                                  Text('Monday 9 pm',)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              height: 65,
                              width: 180,

                              decoration: const BoxDecoration(
                                color: MyAppTheme.buttonColor,
                                borderRadius: BorderRadius.all(Radius.circular(7)),
                              ),
                              child: Column(
                                children:   [
                                  SizedBox(height: screenSize.height * 0.02,),
                                  Text('Company',) ,
                                  Text('View Company Details',)
                                ],
                                  ),
                            ),

                            SizedBox(width: screenSize.width * 0.02,),

                            Container(
                              height: 65,
                              width: 180,

                              decoration: const BoxDecoration(
                                color: MyAppTheme.rowbox4,
                                borderRadius: BorderRadius.all(Radius.circular(7)),
                              ),
                              child: Column(
                                children:   [
                                  SizedBox(height: screenSize.height * 0.02,),
                                  Text('Location',) ,
                                  Text('15/2 abc street',)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      Row(
                        children: [
                          SizedBox(width: screenSize.width * 0.02,),

                          Container(

                            height: 65,
                            width: 180,
                            decoration: const BoxDecoration(
                              color: MyAppTheme.rowbox5,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text('Performance')),
                          ),
                        ],
                      ),

                      SizedBox(height: screenSize.height * 0.2,),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
