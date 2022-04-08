
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

class SalarySlip extends StatefulWidget {
  const SalarySlip({Key? key}) : super(key: key);

  @override
  _SalarySlipState createState() => _SalarySlipState();
}

class _SalarySlipState extends State<SalarySlip> {
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

                      const Text('SalarySlip',
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
                  height: 600,
                  width: 380,
                  padding: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                    color: whiteColor,

                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screenSize.height * 0.02,
                        ),
                        Text('Download Salary Slip', style: ButtonTextStyle,),

                        SizedBox(
                          height: screenSize.height * 0.05,
                        ),


                        Container(
                          height: 150,
                          width: 315,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(5)
                          ),
                        ),

                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),

                        InkWell(
                          borderRadius: BorderRadius.circular(5.0),
                          onTap: ()  {

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
                              'Download',
                              style: TextStyle(color: Colors.white,fontSize: 18),
                            ),

                          ),

                        ),
                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(5.0),
                          onTap: ()  {

                          },
                          child: Container(
                            // padding: EdgeInsets.only(left: 20),
                            height: 40,
                            width: 310,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              color: Colors.grey[500],
                            ),
                            child: const Text(
                              'Share',
                              style: TextStyle(color: Colors.white,fontSize: 18),
                            ),

                          ),

                        ),

                          ],
                        ),),


                      ]
                  ),)
              );

  }
}
