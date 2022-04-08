import 'package:flutter/material.dart';
import 'package:training_app/styles/constants.dart';
import 'package:training_app/styles/myapp_theme.dart';
import 'package:training_app/ui/home_details/calender_all/calender.dart';
import 'package:training_app/ui/home_details/overview_screen.dart';
import 'package:training_app/ui/home_details/profile.dart';
import 'package:training_app/ui/home_details/wallet.dart';

import 'nav_directory.dart';

class HomeScreen extends StatefulWidget {
  // final int index;
  // const HomeScreen( int this.index);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int start = 0;

  void _onItemTapped(int index) {
    setState(() {
      start = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Center(
            child: IndexedStack(
              index: start,
              children: const [Overview(), NavItem(), Calender(), Profile()],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 75,
              width: 415,
              decoration: const BoxDecoration(
                  color: MyAppTheme.navColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
          ),
          Positioned(
            bottom: 6,
            left: 50,
            right: 50,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    _onItemTapped(0);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/overview.png",
                        // color:  start == 0 ? MyAppTheme.navColor : Colors.white,
                        height: 70,
                        width: 70,
                        fit: BoxFit.fitHeight,
                      ),
                      Text(
                        "OverView",
                        style: ButtonTextStyleW,
                      )
                    ],
                  ),
                ),
                Spacer(),
                Spacer(),
                InkWell(
                  onTap: () {
                    _onItemTapped(1);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/wallet.png",
                        height: 70,
                        width: 70,
                        fit: BoxFit.fitHeight,
                      ),
                      Text(
                        "Wallet",
                        style: ButtonTextStyleW,
                      )
                    ],
                  ),
                ),
                Spacer(),
                Spacer(),
                InkWell(
                  onTap: () {
                    _onItemTapped(2);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/calender1.png",
                        height: 70,
                        width: 70,
                        fit: BoxFit.fitHeight,
                      ),
                      Text(
                        "Calender",
                        style: ButtonTextStyleW,
                      )
                    ],
                  ),
                ),
                const Spacer(),
                const Spacer(),
                InkWell(
                  onTap: () {
                    _onItemTapped(3);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/profile.png",
                        height: 70,
                        width: 70,
                        fit: BoxFit.fitHeight,
                      ),
                      Text(
                        "Profile",
                        style: ButtonTextStyleW,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
