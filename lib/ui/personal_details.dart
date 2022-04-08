
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  final _form = GlobalKey<FormState>();
  final _mobnumber = TextEditingController();
  final _fullname = TextEditingController();
  final _emailaddress = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyAppTheme.backgroundColor,
      body: SingleChildScrollView(
        child: Form(
          key: _form,
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

                    const Text('Personal Details',
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

                    SizedBox(
                      height: screenSize.height * 0.05,
                    ),

                    //Full name
                    Padding(
                      padding:  EdgeInsets.all(10.0),
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
                          controller: _fullname,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field can\'t be empty';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            hintText: 'Full Name',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    //  Address
                    Padding(
                      padding:  EdgeInsets.all(10.0),
                      child: Container(
                        width: 365,
                        height: 65,
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
                          // controller: _lastName,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field can\'t be empty';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            hintText: ' Address',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    //Mobile Number
                    Padding(
                      padding:  EdgeInsets.all(10.0),
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
                          controller: _mobnumber,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field can\'t be empty';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            hintText: 'Mobile Number',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    //Email
                    Padding(
                      padding:  EdgeInsets.all(10.0),
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
                          controller: _emailaddress,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field can\'t be empty';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            hintText: 'Email Address',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    //Profession
                    Padding(
                      padding:  EdgeInsets.all(10.0),
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
                          controller: _emailaddress,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field can\'t be empty';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            hintText: 'Profession',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),



                  ],
                ),
              )




            ],
          ),
        ),
      ),
    );
  }
}
