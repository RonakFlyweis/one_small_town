import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_app/network/api_provider.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class HelpnSupport extends StatefulWidget {
  const HelpnSupport({Key? key}) : super(key: key);

  @override
  _HelpnSupportState createState() => _HelpnSupportState();
}

class _HelpnSupportState extends State<HelpnSupport> {
  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final number = TextEditingController();
  final email = TextEditingController();
  final message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ApiProvider api = ApiProvider();
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: screenSize.height * 0.03,
              ),

              //Appbar menu
              Container(
                width: 415,
                height: 85,
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
                    InkWell(
                      child: Container(
                        height: 40,
                        width: 30,
                        child: Image.asset(
                          'assets/images/menu.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      onTap: () {},
                    ),
                    SizedBox(
                      width: screenSize.width * 0.25,
                    ),
                    const Text('Help & Support',
                        style: TextStyle(
                          fontSize: 20.0,
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
                height: 140,
                width: 200,
                child: Image.asset('assets/images/logo.png'),
              ),

              Container(
                height: 700,
                width: 360,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 2),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.location_on_outlined,
                        color: Colors.blue,
                        size: 36,
                      ),
                      title: Text(
                        'Address',
                        style: ButtonTextmedium,
                      ),
                      subtitle: const Expanded(
                        child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                      ),
                    ),

                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),

                    ListTile(
                      leading: const Icon(Icons.phone_android_sharp,
                          color: Colors.blue, size: 36),
                      title: Text('Contact', style: ButtonTextmedium),
                      subtitle: const Text('+91 982771919'),
                    ),

                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Write to us',
                        style: ButtonTextStyle,
                      ),
                    ),

                    //full name
                    Padding(
                      padding: EdgeInsets.all(10.0),
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
                          controller: name,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field can\'t be empty';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            hintText: 'Your Full Name',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    //mob no
                    Padding(
                      padding: EdgeInsets.all(10.0),
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
                          controller: number,
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

                    //Email Address
                    Padding(
                      padding: EdgeInsets.all(10.0),
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
                          controller: email,
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

                    //message for us
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: 300,
                        height: 90,
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
                          controller: message,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field can\'t be empty';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            hintText: 'Message for us',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(10.0),
                          onTap: () async {
                            if (_formKey.currentState!.validate()) {
                              final body = {
                                "address": message.text.toString(),
                                "contact": name.text.toString(),
                                "email": email.text.toString(),
                                "number": number.text.toString()
                              };
                              EasyLoading.show(
                                  status: "Submitting..",
                                  maskType: EasyLoadingMaskType.black);
                              dynamic response =
                                  await api.postMethodUnauthorized(body,
                                      'api/help-support/add/help/and/support');
                              EasyLoading.dismiss();
                              print(response.statusCode);
                              if (response.statusCode == 200 ||
                                  response.statusCode == 201) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            "Query submitted successfully")));
                                Get.back();
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text(
                                        "Some error occured, try again later or try entering correct details")));
                              }
                            }
                          },
                          child: Container(
                            height: 30,
                            width: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: MyAppTheme.buttonColor,
                            ),
                            child: const Text(
                              'SUBMIT',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                      ],
                    )
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
