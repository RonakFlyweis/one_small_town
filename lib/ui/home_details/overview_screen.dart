import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:get/get.dart';
import 'package:training_app/ui/feedback.dart';

class Overview extends StatefulWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyAppTheme.navColor,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: MyAppTheme.navColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(60.0)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        'assets/images/menu.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    onTap: () {
                      Get.toNamed('/menuHome');
                    },
                  ),
                  SizedBox(
                    width: screenSize.width * 0.22,
                  ),
                  const Text('Home',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    width: screenSize.width * 0.08,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: MyAppTheme.navColor,
                        child: Icon(
                          Icons.account_circle_outlined,
                          size: 40,
                        ),
                      ),
                      Text(
                        'Co-Owner Id Number',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  Expanded(
                      child: Icon(
                    Icons.settings,
                    size: 30,
                    color: MyAppTheme.whiteColor,
                  ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(1.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(60.0)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),

                    Container(
                      height: 100,
                      width: 400,
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/images/calender.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),

                    SizedBox(
                      height: screenSize.height * 0.01,
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
                                    Text('Completed'),
                                    Text('4.5')
                                  ],
                                )),
                            Flexible(
                                flex: 3,
                                child: Column(
                                  children: const [Text('Absent'), Text('1')],
                                )),
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
                                )),
                            Flexible(
                                flex: 3,
                                child: Column(
                                  children: const [
                                    Text('Late Arrivals'),
                                    Text('1')
                                  ],
                                )),
                            Flexible(
                                flex: 3,
                                child: Column(
                                  children: const [
                                    Text('Worked Extra Hours'),
                                    Text('3')
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),

                    //Search
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Container(
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
                          // controller: _skill1,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field can\'t be empty';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            hintText: 'Search Co-Owner/Company',
                            suffixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      height: 300,
                      width: 400,
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/images/graph.png',
                        fit: BoxFit.fill,
                      ),
                    ),

                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 200,
                          color: Colors.blueAccent,
                          child: Image.asset(
                            'assets/images/summary.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(FeedbackScreen());
                          },
                          child: Container(
                            height: 80,
                            width: 100,
                            child: Image.asset(
                              'assets/images/feedback.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: buildMyNavBar(context),
    );
  }
}
