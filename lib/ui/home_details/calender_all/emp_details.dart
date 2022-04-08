
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

class EmpDetails extends StatefulWidget {
  const EmpDetails({Key? key}) : super(key: key);

  @override
  _EmpDetailsState createState() => _EmpDetailsState();
}

class _EmpDetailsState extends State<EmpDetails> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: MyAppTheme.navColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenSize.height * 0.02,),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color:  MyAppTheme.navColor ,
                borderRadius: BorderRadius.vertical(top: Radius.circular(60.0)),
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


                  SizedBox(width: screenSize.width * 0.22,),
                  const Text('Calender', style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  )),

                  SizedBox(width: screenSize.width * 0.08,),
                  Column(
                    children: const [
                      CircleAvatar(radius: 20,
                        backgroundColor: MyAppTheme.navColor,
                        child: Icon(Icons.account_circle_outlined,size: 40,),),

                      Text('Co-Owner Id Number', style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,),)
                    ],
                  ),
                  const Expanded(child: Icon(Icons.settings,size: 30,color: MyAppTheme.whiteColor,))
                ],
              ),

            ),
            Padding(
              padding: EdgeInsets.all(1.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(60.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(height: screenSize.height * 0.01,),


                    Container(
                      height: 100,
                      width: 400,
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/images/calender.png', fit: BoxFit.fitWidth,),
                    ),

                    SizedBox(height: screenSize.height * 0.01,),

                    Container(
                      width: 380,
                      height: 40,
                      color: MyAppTheme.buttonShadow_Color,
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Flexible(
                                flex: 3,
                                child: Column(
                                  children: const [
                                    Text('Completed'),
                                    Text('4.5')
                                  ],
                                )) ,
                            Flexible(
                                flex: 3,
                                child: Column(
                                  children: const [
                                    Text('Absent'),
                                    Text('1')
                                  ],
                                )) ,
                            Flexible(
                                flex: 3,
                                child: Column(
                                  children: const [
                                    Text('Left Earlier'),
                                    Text('1')
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: 380,
                      height: 40,
                      color: MyAppTheme.buttonShadow_Color,
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Flexible(
                                flex: 3,
                                child: Column(
                                  children: const [
                                    Text('Situations'),
                                    Text('4')
                                  ],
                                )) ,
                            Flexible(
                                flex: 3,
                                child: Column(
                                  children: const [
                                    Text('Late Arrivals'),
                                    Text('1')
                                  ],
                                )) ,
                            Flexible(
                                flex: 3,
                                child: Column(
                                  children: const [
                                    Text('Worked Hr',),
                                    Text('3')
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: screenSize.height * 0.03,),
                    Text('Name 1',style: ButtonTextML,),



                    SizedBox(height: screenSize.height * 0.1,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                'assets/images/message.png', fit: BoxFit.fitWidth,),
                            ),
                            Text('Message',style: ButtonTextML,),

                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                'assets/images/videocall.png', fit: BoxFit.fitWidth,),
                            ),
                            Text('Video call',style: ButtonTextML,),

                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                'assets/images/voicecall.png', fit: BoxFit.fitWidth,),
                            ),
                            Text('Voice call',style: ButtonTextML,),

                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                'assets/images/block.png', fit: BoxFit.fitWidth,),
                            ),
                            Text('Block',style: ButtonTextML,),

                          ],
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

    );
  }
}
