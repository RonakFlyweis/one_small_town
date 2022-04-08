
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

class VisitHelpCenter extends StatefulWidget {
  const VisitHelpCenter({Key? key}) : super(key: key);

  @override
  _VisitHelpCenterState createState() => _VisitHelpCenterState();
}

class _VisitHelpCenterState extends State<VisitHelpCenter> {
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

                  const Text('Visit help center',
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
                  Text('Here are our help centers that you can visit',style: ButtonTextmedium,),

                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),

                  const ListTile(
                    title: Text("123/b,xyz Lane, Pqr Street"),
                    leading: Icon(Icons.alt_route),
                    subtitle: Text("Province"),
                    trailing: Icon(Icons.map),

                  ),

                  const ListTile(
                    title: Text("123/b,xyz Lane, Pqr Street"),
                    leading: Icon(Icons.alt_route),
                    subtitle: Text("Province"),
                    trailing: Icon(Icons.map),

                  ),


                  SizedBox(
                    height: screenSize.height * 0.05,
                  ),


                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}
