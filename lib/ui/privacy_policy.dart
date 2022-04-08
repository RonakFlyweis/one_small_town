import 'package:flutter/material.dart';
import 'package:training_app/network/api_provider.dart';

import 'package:training_app/styles/myapp_theme.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  late String adminOtp;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    ApiProvider api = ApiProvider();
    return Scaffold(
      backgroundColor: MyAppTheme.whiteColor,
      body: SingleChildScrollView(
        child: Column(children: [
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
                  width: screenSize.width * 0.2,
                ),
                const Text('Privacy Policy',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.all(15),
            child: FutureBuilder(
                future: api.getMethod('api/privacy/get/privacy/policy'),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData) {
                    return ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: snapshot.data["data"].length,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          final item = snapshot.data["data"][index];
                          return Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(item['title'],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300)),
                                    )
                                  ]),
                              SizedBox(
                                height: screenSize.height * 0.03,
                              ),
                            ],
                          );
                        });
                  }
                  if (snapshot.connectionState == ConnectionState.waiting ||
                      !snapshot.hasData) {
                    return SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator());
                  }
                  return Container();
                }),
          )
        ]),
      ),
    );
  }
}
