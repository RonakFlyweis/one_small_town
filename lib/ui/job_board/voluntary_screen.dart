import 'package:flutter/material.dart';
import 'package:training_app/network/api_provider.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

class VolunteerWork extends StatefulWidget {
  const VolunteerWork({Key? key}) : super(key: key);

  @override
  _VolunteerWorkState createState() => _VolunteerWorkState();
}

class _VolunteerWorkState extends State<VolunteerWork> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    ApiProvider api = ApiProvider();
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyAppTheme.navColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: MyAppTheme.navColor,
                  borderRadius: BorderRadius.all(Radius.circular(1.0)),
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
                    const Text('Volunteer work',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
              ),
              //Search bar

              Row(
                children: [
                  //Search
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Container(
                      width: 300,
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

                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 28,
                      height: 20,
                      child: Image.asset(
                        'assets/images/Icon_list.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  )
                ],
              ),

              Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Container(
                    height: 1000,
                    width: 430,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30.0)),
                    ),
                    child: FutureBuilder(
                        future: api.getMethod('api/job/job?jobType=volunteer'),
                        builder: (BuildContext context,
                            AsyncSnapshot<dynamic> snapshot) {
                          if (snapshot.connectionState ==
                                  ConnectionState.done &&
                              snapshot.hasData) {
                            return ListView.builder(
                                itemCount: snapshot.data["data"].length,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final item = snapshot.data["data"][index];
                                  return Container(
                                      child: Column(
                                    children: [
                                      SizedBox(
                                        height: screenSize.height * 0.03,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: screenSize.width * 0.1,
                                          ),
                                          Text(item["shift"],
                                              style: ButtonTextML),
                                          SizedBox(
                                            width: screenSize.width * 0.2,
                                          ),
                                          Text('2d ago', style: ButtonTextML),
                                          SizedBox(
                                            width: screenSize.width * 0.1,
                                          ),
                                          Text(item["perHr"] + "/hr",
                                              style: ButtonTextML)
                                        ],
                                      ),
                                      SizedBox(
                                        height: screenSize.height * 0.05,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: screenSize.width * 0.03,
                                          ),
                                          Container(
                                            width: 65,
                                            height: 65,
                                            child: Image.asset(
                                              'assets/images/hp.png',
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                          SizedBox(
                                            width: screenSize.width * 0.05,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                item['title'],
                                                style: ButtonTextML,
                                              ),
                                              SizedBox(
                                                height:
                                                    screenSize.height * 0.02,
                                              ),
                                              Text(item['subTitle'],
                                                  style: ButtonTextML),
                                              SizedBox(
                                                height:
                                                    screenSize.height * 0.01,
                                              ),
                                              Text(item['address'],
                                                  style: ButtonTextML),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: screenSize.height * 0.02,
                                      ),
                                      Divider(
                                        height: 10,
                                        color: MyAppTheme.black_Color,
                                        thickness: 1,
                                      ),
                                    ],
                                  ));
                                });
                          }
                          if (snapshot.connectionState ==
                                  ConnectionState.waiting ||
                              !snapshot.hasData) {
                            return SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator());
                          }
                          return Container();
                        }),
                    // Column(children: [
                    //   SizedBox(
                    //     height: screenSize.height * 0.03,
                    //   ),
                    //   Row(
                    //     children: [
                    //       SizedBox(
                    //         width: screenSize.width * 0.1,
                    //       ),
                    //       Text('Tomorrow Shifts', style: ButtonTextML),
                    //       SizedBox(
                    //         width: screenSize.width * 0.2,
                    //       ),
                    //       Text('2d ago', style: ButtonTextML),
                    //       SizedBox(
                    //         width: screenSize.width * 0.1,
                    //       ),
                    //       Text('100/h', style: ButtonTextML)
                    //     ],
                    //   ),
                    //   SizedBox(
                    //     height: screenSize.height * 0.05,
                    //   ),
                    //   Row(
                    //     children: [
                    //       SizedBox(
                    //         width: screenSize.width * 0.03,
                    //       ),
                    //       Container(
                    //         width: 65,
                    //         height: 65,
                    //         child: Image.asset(
                    //           'assets/images/hp.png',
                    //           fit: BoxFit.fitWidth,
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: screenSize.width * 0.05,
                    //       ),
                    //       Column(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             volunteerList[0]['address'],
                    //             style: ButtonTextML,
                    //           ),
                    //           SizedBox(
                    //             height: screenSize.height * 0.02,
                    //           ),
                    //           Text(volunteerList[0]['address'], style: ButtonTextML),
                    //           SizedBox(
                    //             height: screenSize.height * 0.01,
                    //           ),
                    //           Text(volunteerList[0]['address'], style: ButtonTextML),
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    //   SizedBox(
                    //     height: screenSize.height * 0.02,
                    //   ),
                    //   Divider(
                    //     height: 10,
                    //     color: MyAppTheme.black_Color,
                    //     thickness: 1,
                    //   ),
                    //   SizedBox(
                    //     height: screenSize.height * 0.03,
                    //   ),
                    //   Row(
                    //     children: [
                    //       SizedBox(
                    //         width: screenSize.width * 0.1,
                    //       ),
                    //       Text('Tomorrow Shifts', style: ButtonTextML),
                    //       SizedBox(
                    //         width: screenSize.width * 0.2,
                    //       ),
                    //       Text('2d ago', style: ButtonTextML),
                    //       SizedBox(
                    //         width: screenSize.width * 0.1,
                    //       ),
                    //       Text('100/h', style: ButtonTextML)
                    //     ],
                    //   ),
                    //   SizedBox(
                    //     height: screenSize.height * 0.05,
                    //   ),
                    //   Row(
                    //     children: [
                    //       SizedBox(
                    //         width: screenSize.width * 0.03,
                    //       ),
                    //       Container(
                    //         width: 65,
                    //         height: 65,
                    //         child: Image.asset(
                    //           'assets/images/hp.png',
                    //           fit: BoxFit.fitWidth,
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: screenSize.width * 0.05,
                    //       ),
                    //       Column(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             'Experienced Receptionist',
                    //             style: ButtonTextML,
                    //           ),
                    //           SizedBox(
                    //             height: screenSize.height * 0.02,
                    //           ),
                    //           Text('Reception UK', style: ButtonTextML),
                    //           SizedBox(
                    //             height: screenSize.height * 0.01,
                    //           ),
                    //           Text('1 Mile - Lnodon', style: ButtonTextML),
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    //   SizedBox(
                    //     height: screenSize.height * 0.02,
                    //   ),
                    //   Divider(
                    //     height: 10,
                    //     color: MyAppTheme.black_Color,
                    //     thickness: 1,
                    //   ),
                    //   SizedBox(
                    //     height: screenSize.height * 0.03,
                    //   ),
                    //   Row(
                    //     children: [
                    //       SizedBox(
                    //         width: screenSize.width * 0.1,
                    //       ),
                    //       Text('Tomorrow Shifts', style: ButtonTextML),
                    //       SizedBox(
                    //         width: screenSize.width * 0.2,
                    //       ),
                    //       Text('2d ago', style: ButtonTextML),
                    //       SizedBox(
                    //         width: screenSize.width * 0.1,
                    //       ),
                    //       Text('100/h', style: ButtonTextML)
                    //     ],
                    //   ),
                    //   SizedBox(
                    //     height: screenSize.height * 0.05,
                    //   ),
                    //   Row(
                    //     children: [
                    //       SizedBox(
                    //         width: screenSize.width * 0.03,
                    //       ),
                    //       Container(
                    //         width: 65,
                    //         height: 65,
                    //         child: Image.asset(
                    //           'assets/images/hp.png',
                    //           fit: BoxFit.fitWidth,
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: screenSize.width * 0.05,
                    //       ),
                    //       Column(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             'Experienced Receptionist',
                    //             style: ButtonTextML,
                    //           ),
                    //           SizedBox(
                    //             height: screenSize.height * 0.02,
                    //           ),
                    //           Text('Reception UK', style: ButtonTextML),
                    //           SizedBox(
                    //             height: screenSize.height * 0.01,
                    //           ),
                    //           Text('1 Mile - Lnodon', style: ButtonTextML),
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    //   SizedBox(
                    //     height: screenSize.height * 0.02,
                    //   ),
                    //   Divider(
                    //     height: 10,
                    //     color: MyAppTheme.black_Color,
                    //     thickness: 1,
                    //   ),
                    //   SizedBox(
                    //     height: screenSize.height * 0.03,
                    //   ),
                    //   Row(
                    //     children: [
                    //       SizedBox(
                    //         width: screenSize.width * 0.1,
                    //       ),
                    //       Text('Tomorrow Shifts', style: ButtonTextML),
                    //       SizedBox(
                    //         width: screenSize.width * 0.2,
                    //       ),
                    //       Text('2d ago', style: ButtonTextML),
                    //       SizedBox(
                    //         width: screenSize.width * 0.1,
                    //       ),
                    //       Text('100/h', style: ButtonTextML)
                    //     ],
                    //   ),
                    //   SizedBox(
                    //     height: screenSize.height * 0.05,
                    //   ),
                    //   Row(
                    //     children: [
                    //       SizedBox(
                    //         width: screenSize.width * 0.03,
                    //       ),
                    //       Container(
                    //         width: 65,
                    //         height: 65,
                    //         child: Image.asset(
                    //           'assets/images/hp.png',
                    //           fit: BoxFit.fitWidth,
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: screenSize.width * 0.05,
                    //       ),
                    //       Column(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             'Experienced Receptionist',
                    //             style: ButtonTextML,
                    //           ),
                    //           SizedBox(
                    //             height: screenSize.height * 0.02,
                    //           ),
                    //           Text('Reception UK', style: ButtonTextML),
                    //           SizedBox(
                    //             height: screenSize.height * 0.01,
                    //           ),
                    //           Text('1 Mile - Lnodon', style: ButtonTextML),
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    //   SizedBox(
                    //     height: screenSize.height * 0.02,
                    //   ),
                    //   Divider(
                    //     height: 10,
                    //     color: MyAppTheme.black_Color,
                    //     thickness: 1,
                    //   ),
                    //   SizedBox(
                    //     height: screenSize.height * 0.03,
                    //   ),
                    //   Row(
                    //     children: [
                    //       SizedBox(
                    //         width: screenSize.width * 0.1,
                    //       ),
                    //       Text('Tomorrow Shifts', style: ButtonTextML),
                    //       SizedBox(
                    //         width: screenSize.width * 0.2,
                    //       ),
                    //       Text('2d ago', style: ButtonTextML),
                    //       SizedBox(
                    //         width: screenSize.width * 0.1,
                    //       ),
                    //       Text('100/h', style: ButtonTextML)
                    //     ],
                    //   ),
                    //   SizedBox(
                    //     height: screenSize.height * 0.05,
                    //   ),
                    //   Row(
                    //     children: [
                    //       SizedBox(
                    //         width: screenSize.width * 0.03,
                    //       ),
                    //       Container(
                    //         width: 65,
                    //         height: 65,
                    //         child: Image.asset(
                    //           'assets/images/hp.png',
                    //           fit: BoxFit.fitWidth,
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: screenSize.width * 0.05,
                    //       ),
                    //       Column(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             'Experienced Receptionist',
                    //             style: ButtonTextML,
                    //           ),
                    //           SizedBox(
                    //             height: screenSize.height * 0.02,
                    //           ),
                    //           Text('Reception UK', style: ButtonTextML),
                    //           SizedBox(
                    //             height: screenSize.height * 0.01,
                    //           ),
                    //           Text('1 Mile - Lnodon', style: ButtonTextML),
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    //   SizedBox(
                    //     height: screenSize.height * 0.02,
                    //   ),
                    //   Divider(
                    //     height: 10,
                    //     color: MyAppTheme.black_Color,
                    //     thickness: 1,
                    //   ),
                    // ]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
