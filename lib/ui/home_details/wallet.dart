
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:get/get.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: MyAppTheme.whiteColor,
      body: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.02,
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
                      width: screenSize.width * 0.3,
                    ),
                    const Text('Wallet',
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
                padding: EdgeInsets.all(20),
                height: 1000,
                width: 360,
                decoration: BoxDecoration( border: Border.all(
                    color: Colors.black12,width: 2
                ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start ,
                  children: [

                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center ,
                      children: [

                        InkWell(

                          onTap: ()  {

                            Get.toNamed('/salarySlip');

                          },
                          child: Container(

                            height: 50,
                            width: 128,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.blueAccent,width: 2
                            ),
                              borderRadius: BorderRadius.circular(8.0),

                            ),
                            child: const Text(
                              'Download salary slip',
                              style: TextStyle(color: Colors.blueAccent,fontSize: 12),
                            ),

                          ),

                        ),

                        InkWell(

                          onTap: ()  {

                          },
                          child: Container(

                            height: 50,
                            width: 128,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.blueAccent,width: 2
                            ),
                              borderRadius: BorderRadius.circular(8.0),

                            ),
                            child: const Text(
                              'Make Payment',
                              style: TextStyle(color: Colors.blueAccent,fontSize: 12),
                            ),

                          ),

                        ),
                      ],
                    ),

                    SizedBox(
                      height: screenSize.height * 0.1,
                    ),
                    Text(
                      'Wallet Balance',
                      style:  ButtonTextStyle,
                    ),
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    const Text(
                      '1345.00',
                      style:  TextStyle(fontSize: 25,color: Colors.black),
                    ),

                    SizedBox(
                      height: screenSize.height * 0.05,
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Transactions',
                        style:  ButtonTextStyle,
                      ),
                    ),

                    ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                      children:  <Widget>[


                        SizedBox(
                          height: screenSize.height * 0.02,
                        ),

                        const ListTile(
                          title: Text("Sent"),
                          leading: Icon(Icons.money,color: Colors.green),
                          subtitle: Text("Paid to onsns"),
                          trailing: Icon(Icons.chevron_right,color: Colors.green,),

                        ),
                        const ListTile(
                          title: Text("Sent"),
                          leading: Icon(Icons.money,color: Colors.green),
                          subtitle: Text("Paid to onsns"),
                          trailing: Icon(Icons.chevron_right,color: Colors.green,),

                        ),
                        const ListTile(
                          title: Text("Sent"),
                          leading: Icon(Icons.money,color: Colors.green),
                          subtitle: Text("Paid to onsns"),
                          trailing: Icon(Icons.chevron_right,color: Colors.green,),

                        ),
                        const ListTile(
                          title: Text("Sent"),
                          leading: Icon(Icons.money,color: Colors.green),
                          subtitle: Text("Paid to onsns"),
                          trailing: Icon(Icons.chevron_right,color: Colors.green,),

                        ),
                        const ListTile(
                          title: Text("Sent"),
                          leading: Icon(Icons.money,color: Colors.green),
                          subtitle: Text("Paid to onsns"),
                          trailing: Icon(Icons.chevron_right,color: Colors.green,),

                        ),






                      ],
                    ),

                  ],
                )
              )




            ]),
      ),
    );
  }
}
