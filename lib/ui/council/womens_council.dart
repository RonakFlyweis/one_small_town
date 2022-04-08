
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

class WomensCouncil extends StatefulWidget {
  const WomensCouncil({Key? key}) : super(key: key);

  @override
  _WomensCouncilState createState() => _WomensCouncilState();
}

class _WomensCouncilState extends State<WomensCouncil> {
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
                height: screenSize.height * 0.03,
              ),

              Container(
                height: 100,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  color: MyAppTheme.womensclr,
                ),
                padding: EdgeInsets.all(20),

                child: Image.asset(
                  'assets/images/womenscon.png',),
              ),

              SizedBox(
                height: screenSize.height * 0.02,
              ),

              Text("Women's Council",style: ButtonTextStyle,),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Name'),


                    Image.asset(
                      'assets/images/nominate.png',height: 15,fit: BoxFit.fitHeight,),
                  ],
                ),
              ),



              // ListView(
              //   scrollDirection: Axis.vertical,
              //   children: [
              //
              //     Divider(height: 1,color: Colors.black26,),
              //     Text('Name',style: ButtonTextML,),
              //     Divider(height: 1,color: Colors.black26,),
              //     Text('Name'),
              //     Divider(height: 1,color: Colors.black26,),
              //     Text('Name'),
              //     Divider(height: 1,color: Colors.black26,),
              //     Text('Name'),
              //     Divider(height: 1,color: Colors.black26,),
              //     Text('Name'),
              //     Divider(height: 1,color: Colors.black26,),
              //     Text('Name'),
              //     Divider(height: 1,color: Colors.black26,),
              //     Text('Name'),
              //     Divider(height: 1,color: Colors.black26,),
              //     Text('Name'),
              //     Divider(height: 1,color: Colors.black26,),
              //     Text('Name'),
              //   ],
              // )







            ]),
      ),
    );
  }
}
