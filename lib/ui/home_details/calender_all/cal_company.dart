import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:training_app/ui/home_details/calender_all/app_telemetry.dart';
import 'package:training_app/ui/home_details/calender_all/dividends.dart';
import 'package:training_app/ui/home_details/calender_all/sales_details.dart';
import 'package:training_app/ui/home_details/calender_all/team_roles.dart';
import 'package:get/get.dart';

import 'companydetails_screen.dart';

class CompanyDetails extends StatefulWidget {
  const CompanyDetails({Key? key}) : super(key: key);

  @override
  _CompanyDetailsState createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: MyAppTheme.navColor,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: screenSize.height * 0.02,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: MyAppTheme.navColor,
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
                SizedBox(
                  width: screenSize.width * 0.22,
                ),
                const Text('Calender',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(
                  width: screenSize.width * 0.25,
                ),
                Icon(
                  Icons.settings,
                  size: 30,
                  color: MyAppTheme.whiteColor,
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(1.0),
              child: Container(
                  height: 900,
                  width: 400,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(60.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.1,
                      ),

                      //Company Details
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: 370.0,
                          height: 50.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border:
                                Border.all(width: 0.05, color: Colors.purple),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 0.05,
                                spreadRadius: 0.05,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed('/companyDetails');

                            },
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Company Details'),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                      ) ,


                      //Sales Data
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: 370.0,
                          height: 50.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border:
                                Border.all(width: 0.05, color: Colors.purple),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 0.05,
                                spreadRadius: 0.05,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed('/salesDetail');

                            },
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Sales Data'),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                      ),

                      //Dividends
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: 370.0,
                          height: 50.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border:
                                Border.all(width: 0.05, color: Colors.purple),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 0.05,
                                spreadRadius: 0.05,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed('/dividends');
                            },
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Dividends'),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                      ) ,

                      //Team Roles
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: 370.0,
                          height: 50.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border:
                                Border.all(width: 0.05, color: Colors.purple),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 0.05,
                                spreadRadius: 0.05,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed('/teamRoles');

                            },
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Team Roles'),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                      ),


                      //App Telemetry
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: 370.0,
                          height: 50.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5.0),
                            border:
                                Border.all(width: 0.05, color: Colors.purple),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                blurRadius: 0.05,
                                spreadRadius: 0.05,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed('/appTelemetry');

                            },
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text('App Telemetry'),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )))
        ]),
      ),
    );
  }
}
