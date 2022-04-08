
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:get/get.dart';


class PatrionScreen extends StatefulWidget {
  const PatrionScreen({Key? key}) : super(key: key);

  @override
  _PatrionScreenState createState() => _PatrionScreenState();
}

class _PatrionScreenState extends State<PatrionScreen> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child:  Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.fitWidth,) ,
                width: 300,
                height: 170,),
            ),

            SizedBox(height: screenSize.height * 0.04,),
            //Become a Patrion
            GestureDetector(
              onTap: (){

              },
              child: Container(

                  height: 40,
                  width: 330,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(color: Colors.blue,
                        width: 2,
                      )

                  ),
                  child: Text('BECOME A PATRION',style: ButtonTextLight,)),
            ),
            SizedBox(height: screenSize.height * 0.02,),

            //Work with the team
            GestureDetector(
              onTap: (){

              },
              child: Container(
                  height: 40,
                  width: 330,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(color: Colors.blue,
                        width: 2,
                      )
                  ),
                  child: Text('WORK WITH THE TEAM',style: ButtonTextLight,)),
            ),
            SizedBox(height: screenSize.height * 0.02,),

            //Subscribe to NewsLetter
            GestureDetector(
              onTap: (){

              },
              child: Container(

                  height: 40,
                  width: 330,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(color: Colors.blue,
                        width: 2,
                      )

                  ),
                  child: Text('SUBSCRIBE TO NEWSLETTER',style: ButtonTextLight,)),
            ),
          ],

        ),
      )
    );
  }
}
