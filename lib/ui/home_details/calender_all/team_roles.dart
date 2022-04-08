
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

class TeamRoles extends StatefulWidget {
  const TeamRoles({Key? key}) : super(key: key);

  @override
  _TeamRolesState createState() => _TeamRolesState();
}

class _TeamRolesState extends State<TeamRoles> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: MyAppTheme.navColor,
      body: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.02,
              ),

              //Appbar menu
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
                      height: 600,
                      width: 400,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.vertical(top: Radius.circular(60.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Text('Team Roles',style: ButtonTextStyle,),

                          SizedBox(
                            height: screenSize.height * 0.05,
                          ),

                          //Details start

                          Padding(
                            padding: EdgeInsets.only(left: 30,right: 30,),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  '  Permanent ',
                                  style: ButtonTextmedium,
                                ),

                                Padding(
                                  padding:  EdgeInsets.only(left: 1.0,top: 7),
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
                                      // controller: _qualification,
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Field can\'t be empty';
                                        }
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.all(15.0),
                                        hintText: '4' ,
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),



                                SizedBox(height: screenSize.height * 0.02,),

                                Text(
                                  ' OST App ',
                                  style: ButtonTextmedium,
                                ),
                                SizedBox(height: screenSize.height * 0.01,),

                                Padding(
                                  padding:  EdgeInsets.only(left: 1.0,top: 7),
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
                                      // controller: _qualification,
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Field can\'t be empty';
                                        }
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.all(15.0),
                                        hintText: '15',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02,),

                                Text(
                                  ' OST Volunteers ',
                                  style: ButtonTextmedium,
                                ),
                                SizedBox(height: screenSize.height * 0.01,),

                                Padding(
                                  padding:  EdgeInsets.only(left: 1.0,top: 7),
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
                                      // controller: _qualification,
                                      keyboardType: TextInputType.text,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Field can\'t be empty';
                                        }
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.all(15.0),
                                        hintText: ' 11 ',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: screenSize.height * 0.3,),


                              ],
                            ),
                          )


                        ],
                      ))),


            ]
        ),
      ),
    );
  }
}
