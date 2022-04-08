import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:get/get.dart';

class WelcomeUser extends StatefulWidget {
  const WelcomeUser({Key? key}) : super(key: key);

  @override
  _WelcomeUserState createState() => _WelcomeUserState();
}

class _WelcomeUserState extends State<WelcomeUser> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: MyAppTheme.navColor,
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: MyAppTheme.navColor,
            borderRadius: BorderRadius.all(Radius.circular(1.0)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                child: Container(
                  height: 30,
                  width: 30,
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
                width: screenSize.width * 0.2,
              ),
              const Text('Welcome,Username',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ),

              //Search
              Padding(
                padding: EdgeInsets.all(25.0),
                child: Container(
                  width: 370,
                  height: 40,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(60.0),
                    border: Border.all(width: 0.3, color: Colors.black54),

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
                      contentPadding: EdgeInsets.all(7.0),
                      hintText: '    Search here',
                      suffixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

            SizedBox(
              height: screenSize.height * 0.13,
            ),

            GestureDetector(
              onTap: (){
                Get.toNamed('/permanentJob');
              },
              child: Container(
                width: 370,
                height: 100 ,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(width: 0.3, color: Colors.black54),
                ),
                child:  Row(
                  children: [
                    SizedBox(
                      width: screenSize.width * 0.07,
                    ),
                    Container(
                      width: 50,
                      height: 50 ,
                      child: Image.asset('assets/images/perm.png', fit: BoxFit.fitWidth,),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.08,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text('Permanent Job'),
                        SizedBox(
                          height: screenSize.height * 0.02,
                        ),
                        Text('Enjoy a wide variety of Jobs')
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(
              height: screenSize.height * 0.08,
            ),

            GestureDetector(
              onTap: (){
                Get.toNamed('/volunteerWork');

              },
              child: Container(
                width: 370,
                height: 100 ,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(width: 0.3, color: Colors.black54),
                ),
                child:  Row(
                  children: [
                    SizedBox(
                      width: screenSize.width * 0.07,
                    ),
                    Container(
                      width: 50,
                      height: 50 ,
                      child: Image.asset('assets/images/volun.png', fit: BoxFit.fitWidth,),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.08,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text('Volunteer Work'),
                        SizedBox(
                          height: screenSize.height * 0.02,
                        ),
                        const Text('Give Passion')
                      ],
                    )
                  ],
                ),
              ),
            )


      ])),
    ));
  }
}
