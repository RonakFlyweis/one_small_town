
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

class Languages extends StatefulWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  _LanguagesState createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {

  bool _value = false;
  int? val = -1;


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyAppTheme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
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
                    width: screenSize.width * 0.18,
                  ),

                  const Text('Change Language',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      )),

                ],
              ),
            ),

            SizedBox(
              height: screenSize.height * 0.02,
            ),


            Container(
              height: 800,
              width: 380,
              padding: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                color: whiteColor,

                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children:  <Widget>[
                  Text('Select your preferred language',style: ButtonTextmedium,),

                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),

                  ListTile(
                    title: Text("English"),
                    leading: Radio(
                      value: 1,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value! as int?;
                        });
                      },

                    ),
                  ),

                  ListTile(
                    title: Text("Spanish"),
                    leading: Radio(
                      value: 2,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value! as int?;
                        });
                      },

                    ),
                  ),

                  ListTile(
                    title: Text("Hindi"),
                    leading: Radio(
                      value: 3,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value! as int?;
                        });
                      },

                    ),
                  ),

                  ListTile(
                    title: Text("Bengali"),
                    leading: Radio(
                      value: 4,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value! as int?;
                        });
                      },

                    ),
                  ),

                  ListTile(
                    title: Text("Japanese"),
                    leading: Radio(
                      value: 5,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value! as int?;
                        });
                      },

                    ),
                  ),

                  ListTile(
                    title: Text("Russian"),
                    leading: Radio(
                      value: 6,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value! as int?;
                        });
                      },

                    ),
                  ),

                  ListTile(
                    title: Text("Vietnamese"),
                    leading: Radio(
                      value: 7,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value! as int?;
                        });
                      },

                    ),
                  ),

                  ListTile(
                    title: Text("Italian"),
                    leading: Radio(
                      value: 8,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value! as int?;
                        });
                      },

                    ),
                  ),

                  ListTile(
                    title: Text("Nepali"),
                    leading: Radio(
                      value: 9,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value! as int?;
                        });
                      },

                    ),
                  ),

                  ListTile(
                    title: Text("Hungarian"),
                    leading: Radio(
                      value: 10,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value! as int?;
                        });
                      },

                    ),
                  ),

                  SizedBox(
                    height: screenSize.height * 0.05,
                  ),


                ],
              ),
            )




          ],
        ),
      ),
    );
  }
}
