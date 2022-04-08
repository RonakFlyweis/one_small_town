
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

class TaxDeclaration extends StatefulWidget {
  const TaxDeclaration({Key? key}) : super(key: key);

  @override
  _TaxDeclarationState createState() => _TaxDeclarationState();
}

class _TaxDeclarationState extends State<TaxDeclaration> {
  bool? valuefirst = false;
  bool? valuefirst2 = false;
  bool? valuefirst3 = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: MyAppTheme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
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
                    width: screenSize.width * 0.15,
                  ),

                  const Text('Tax Declaration',
                      style: TextStyle(
                        fontSize: 18.0,
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
                height: 600,
                width: 380,
                padding: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  color: whiteColor,

                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    Text('Please determine your tax status', style: ButtonTextStyle,),

                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          checkColor: Colors.black,
                          activeColor: Colors.white60,
                          value: this.valuefirst,
                          onChanged: ( value) {
                            setState(() {
                              this.valuefirst = value!;
                            });
                          },
                        ),
                        const Expanded(
                          child: Text (
                            "It is a long established fact that a reader will be distracted "
                                "by the readable content of a page whenlooking at its layout. "
                                "The point of using Lorem Ipsum is that it has"
                                " a more-or-less normal distribution of letters" ,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: MyAppTheme.text_bg_Color,
                              fontWeight: FontWeight.normal,),),
                        )

                      ],
                    ),

                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          checkColor: Colors.black,
                          activeColor: Colors.white60,
                          value: this.valuefirst2,
                          onChanged: ( value) {
                            setState(() {
                              this.valuefirst2 = value!;
                            });
                          },
                        ),
                        const Expanded(
                          child: Text (
                            "It is a long established fact that a reader will be distracted "
                                "by the readable content" ,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: MyAppTheme.text_bg_Color,
                              fontWeight: FontWeight.normal,),),
                        )

                      ],
                    ),

                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          checkColor: Colors.black,
                          activeColor: Colors.white60,
                          value: this.valuefirst3,
                          onChanged: ( value) {
                            setState(() {
                              this.valuefirst3 = value!;
                            });
                          },
                        ),
                        const Expanded(
                          child: Text (
                            "It is a long established fact that a reader will be distracted "
                                "by the readable content of a page whenlooking at its layout. ",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: MyAppTheme.text_bg_Color,
                              fontWeight: FontWeight.normal,),),
                        )

                      ],
                    ),

                    
                 ]
                    ),)
                  ],
                )
            )


      );

  }
}
