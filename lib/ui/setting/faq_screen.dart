

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  _FaqScreenState createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
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
                    width: screenSize.width * 0.22,
                  ),

                  const Text('F.A.Q',
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

              //Search
              Padding(
                padding: EdgeInsets.all(15.0),
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
                    // controller: _skill1,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field can\'t be empty';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      hintText: 'Search ',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),


            Container(
              height: 500,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Lorem ipsum is randomely generated text?'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  Divider(height: 10,color: MyAppTheme.black_Color,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Lorem ipsum is randomely generated text?'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),

                  Divider(height: 10,color: MyAppTheme.black_Color,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Lorem ipsum is randomely generated text?'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  Divider(height: 10,color: MyAppTheme.black_Color,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Lorem ipsum is randomely generated text?'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  Divider(height: 10,color: MyAppTheme.black_Color,)

                  ,Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Lorem ipsum is randomely generated text?'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  Divider(height: 10,color: MyAppTheme.black_Color,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Lorem ipsum is randomely generated text?'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  Divider(height: 10,color: MyAppTheme.black_Color,),



                ],
              ),
            )




          ],
        ),
      ),
    );
  }
}
