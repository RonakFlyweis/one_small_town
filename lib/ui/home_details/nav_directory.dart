

import 'package:flutter/material.dart';


class NavItem extends StatefulWidget {
  const NavItem({Key? key}) : super(key: key);

  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: <Widget>[
              Container(
                // card view
                  alignment: Alignment.center,
                  height: 50,
                  margin: const EdgeInsets.only(
                      top: 80.0, bottom: 50.0, left: 50.0, right: 50.0),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Colors.deepPurpleAccent, Colors.pink]),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: Text('Label')),

              Row(
                children: [

                  Expanded(
                    child: FractionalTranslation(
                      translation: const Offset(0.0, 0.0),
                      child: Align(
                        child: Container(
                          width: screenSize.width * 0.3,
                          height: screenSize.height * 0.2,
                          child:  const CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.grey,
                            child:   Icon(
                              Icons.person_outline_sharp,
                              color: Colors.pinkAccent,
                              size: 70,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: FractionalTranslation(
                      translation: const Offset(0.0, 0.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: screenSize.width * 0.3,
                          height: screenSize.height * 0.2,
                          child:  const CircleAvatar(
                            radius: 1,
                            backgroundColor: Colors.grey,
                            child:   Icon(
                              Icons.person_outline_sharp,
                              color: Colors.pinkAccent,
                              size: 70,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: FractionalTranslation(
                      translation: const Offset(0.0, 0.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: screenSize.width * 0.3,
                          height: screenSize.height * 0.2,
                          child:  const CircleAvatar(
                            radius: 1,
                            backgroundColor: Colors.grey,
                            child:   Icon(
                              Icons.person_outline_sharp,
                              color: Colors.pinkAccent,
                              size: 70,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: FractionalTranslation(
                      translation: const Offset(0.0, 0.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: screenSize.width * 0.3,
                          height: screenSize.height * 0.2,
                          child:  const CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.grey,
                            child:   Icon(
                              Icons.person_outline_sharp,
                              color: Colors.pinkAccent,
                              size: 70,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
