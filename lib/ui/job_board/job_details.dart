import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

class JobDetails extends StatefulWidget {
  const JobDetails({Key? key}) : super(key: key);

  @override
  _JobDetailsState createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

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
                    SizedBox(
                      width: screenSize.width * 0.02,
                    ),
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
                      width: screenSize.width * 0.01,
                    ),
                    const Text('Job detail',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
              ),

              Padding(
                  padding: const EdgeInsets.only(left: 5.0,top: 10,bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Experienced Receptionist  ',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          )),
                      Text('Front desk',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  )),


               Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Container(
                      height: 1100,
                      width: 430,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30.0)),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                        SizedBox(
                          height: screenSize.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset('assets/images/notinterested.png',fit: BoxFit.fitWidth,),
                                  ),
                                  onTap: (){},
                                ),
                                Text('Not',style: ButtonTextML,),
                                Text('Interested',style: ButtonTextML,),
                              ],
                            ),

                            Column(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset('assets/images/shifts.png',fit: BoxFit.fitWidth,),
                                  ),
                                  onTap: (){},
                                ),
                                Text('Select',style: ButtonTextML,),
                                Text('Shifts',style: ButtonTextML,),
                              ],
                            ),

                            Column(
                              children: [
                                GestureDetector(
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset('assets/images/directions.png',fit: BoxFit.fitWidth,),
                                  ),
                                  onTap: (){},
                                ),
                                Text('Directions',style: ButtonTextML,),

                              ],
                            ),

                          ],
                        ),

                         SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [

                                Text('Mon',style: ButtonTextML,),
                                Text('21 Jan',style: ButtonTextML,),
                                Text('8:00: 12:00',style: ButtonTextMS,),
                              ],
                            ),

                            Column(
                              children: [

                                Text('Tue',style: ButtonTextML,),
                                Text('22 Jan',style: ButtonTextML,),
                                Text('8:00: 12:00',style: ButtonTextMS,),
                              ],
                            ),
                            Column(
                              children: [

                                Text('Wed',style: ButtonTextML,),
                                Text('23 Jan',style: ButtonTextML,),
                                Text('8:00: 12:00',style: ButtonTextMS,),
                              ],
                            ),
                            Column(
                              children: [

                                Text('Thr',style: ButtonTextML,),
                                Text('24 Jan',style: ButtonTextML,),
                                Text('8:00: 12:00',style: ButtonTextMS,),
                              ],
                            ),

                            Column(
                              children: [

                                Text('Fri',style: ButtonTextML,),
                                Text('25 Jan',style: ButtonTextML,),
                                Text('8:00: 12:00',style: ButtonTextMS,),
                              ],
                            ),



                          ],
                        ),

                        SizedBox(
                              height: screenSize.height * 0.03,
                            ),

                        Row(

                              children: [
                                SizedBox(
                                  width: screenSize.width * 0.05,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Text('Pay',style: ButtonTextStyle,),
                                    Text('Rate inc. holiday pay',style: ButtonTextML,),
                                    Text('Approximate salary',style: ButtonTextMS,),
                                  ],
                                ),

                                SizedBox(
                                  width: screenSize.width * 0.4,
                                ),

                                Column(
                                  children: [

                                    Text('\$' + '10.0/h',style: ButtonTextML,),
                                    Text('\$' + '1885',style: ButtonTextML,),

                                  ],
                                ),


                              ],
                            ),
                            SizedBox(
                              height: screenSize.height * 0.02,
                            ),

                        Text('Company',style: ButtonTextStyle,),

                        Row(
                              children: [
                                SizedBox(
                                  width: screenSize.width * 0.03,
                                ),
                                Container(
                                  width: 65,
                                  height: 65 ,
                                  child: Image.asset('assets/images/hp.png', fit: BoxFit.fitWidth,),
                                ),
                                SizedBox(
                                  width: screenSize.width * 0.05,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Text('Experienced Receptionist',style: ButtonTextML,),
                                    SizedBox(
                                      height: screenSize.height * 0.02,
                                    ),
                                    Text('Reception UK',style: ButtonTextML),


                                  ],
                                )
                              ],
                            ),

                            SizedBox(
                              height: screenSize.height * 0.02,
                            ),

                        Text('ID:123478',style: ButtonTextStyle,),
                            SizedBox(
                              height: screenSize.height * 0.02,
                            ),


                        Text('Experience Receptionist- 25 great Poery street',style: ButtonTextStyle,),
                            SizedBox(
                              height: screenSize.height * 0.02,
                            ),


                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Row(
                           children: const [

                         Expanded(
                           child: Text('In this role, you have the opportunity '
                               'to Bring the Data Design competence to the '
                               'levelby leveraging data as '
                               'design material in thecreative process and '
                               'impact people’shealththrough '
                               'meaningful data and AI enabledpropositions.'
                               'With your hands-on design '
                               'andprogrammingskills, you bring in a new view on'
                               ' and buildexciting new '
                               'propositions for our users andcustomers through '
                               'visualizing and synthesizingon'
                               ' data. We are looking for a Data Design expertthat can '
                               'run projects in the team'
                               ' with high levelof independence. This role can be for '
                               'a computeror data scientist'
                               ' with clear experience in acreative, design environment, '
                               'able to providePortfolio proving affinity with the design '
                               'field.On the other hand, this role can be for aUX designer with clear '
                               'affinity with data, whois able to work hands on with data and programoneself'),
                         )
                           ],
                         ),
                       ),

                            Text('Dress Code',style: ButtonTextStyle,),
                            SizedBox(
                              height: screenSize.height * 0.01,
                            ),

                            Container(
                              padding: EdgeInsets.all(4),
                              width: 400 ,
                              height: 150,
                              child: Image.asset('assets/images/graph.png',fit: BoxFit.fitWidth,),
                            ),

                            SizedBox(
                              height: screenSize.height * 0.03,
                            ),


                            //not interested
                            InkWell(

                              onTap: ()  {

                              },
                              child: Container(

                                height: 50,
                                width: 350,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(color: Colors.black54),
                                  color: MyAppTheme.whiteColor,
                                ),
                                child: const Text(
                                  'Not Interested',
                                  style: TextStyle(color: Colors.black,fontSize: 18),
                                ),

                              ),

                            ),

                            SizedBox(
                              height: screenSize.height * 0.02,
                            ),

                            //apply now
                            InkWell(
                              // borderRadius: BorderRadius.circular(5.0),
                              onTap: ()  {

                              },
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                height: 50,
                                width: 350,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: MyAppTheme.navColor,
                                ),
                                child: const Text(
                                  'Apply Now',
                                  style: TextStyle(color: Colors.white,fontSize: 18),
                                ),

                              ),

                            ),






                      ])))
            ],
          ),
        ),
      ),
    );
  }
}
