
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:training_app/ui/council/womens_council.dart';

class VotingScreen extends StatefulWidget {
  const VotingScreen({Key? key}) : super(key: key);

  @override
  _VotingScreenState createState() => _VotingScreenState();
}

class _VotingScreenState extends State<VotingScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: MyAppTheme.whiteColor,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                height: screenSize.height * 0.02,
              ),


           // votingbtn

              InkWell(
                borderRadius: BorderRadius.circular(4.0),
                onTap: ()  {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SkillsInterested()),
                  // );
                },
                child: Container(
                  // padding: EdgeInsets.only(left: 20),
                  height: 40,
                  width: 315,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: MyAppTheme.buttonColor,
                  ),
                  child:
                      Text(
                        'Voting and Elections',
                        style: TextStyle(color: Colors.white,fontSize: 18),
                      ),

                  ),

              ),
              SizedBox(
                height: screenSize.height * 0.05,
              ),

              //youth council
              GestureDetector(
                 onTap: (){},
                child: Row(
                  children: [

                    SizedBox(
                      width: screenSize.width * 0.12,
                    ),
                    Container(
                      height: 80,
                      width: 75,
                      padding: EdgeInsets.all(15),
                      color: MyAppTheme.youthclr,
                      child: Image.asset(
                        'assets/images/youthcouncil.png',),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.05,
                    ),

                    Text('Youth Council',style: ButtonTextStyle,)
                  ],
                ),
              ) ,

              SizedBox(
                height: screenSize.height * 0.02,
              ),

              //Women's Council
              GestureDetector(
                 onTap: (){

                   Navigator.push(context,MaterialPageRoute(builder: (context) => WomensCouncil()),

                   );
                 },
                child: Row(
                  children: [

                    SizedBox(
                      width: screenSize.width * 0.12,
                    ),
                    Container(
                      height: 80,
                      width: 75,
                      padding: EdgeInsets.all(15),
                      color: MyAppTheme.womensclr,
                      child: Image.asset(
                        'assets/images/womenscon.png',),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.05,
                    ),

                    Text("Women's Council",style: ButtonTextStyle,)
                  ],
                ),
              ) ,

              SizedBox(
                height: screenSize.height * 0.02,
              ),


              //People's Council
              GestureDetector(
                 onTap: (){},
                child: Row(
                  children: [

                    SizedBox(
                      width: screenSize.width * 0.12,
                    ),
                    Container(
                      height: 80,
                      width: 75,
                      padding: EdgeInsets.all(15),
                      color: MyAppTheme.peoplesclr,
                      child: Image.asset(
                        'assets/images/Peoplesc.png',),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.05,
                    ),

                    Text("The People's Council"  ,style: ButtonTextStyle,)
                  ],
                ),
              ) ,

              SizedBox(
                height: screenSize.height * 0.05,
              ),

              GestureDetector(
                onTap: (){},

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
