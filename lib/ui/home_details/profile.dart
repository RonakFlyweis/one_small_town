
import 'package:flutter/material.dart';
import 'package:training_app/ui/home_details/overview_screen.dart';

import 'home_screen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {



  // BottomController _bottomController =
  // Get.put(BottomController(), permanent: true);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(

          children: [
            Center(
              child: IndexedStack(
                // index: _bottomController.tabindex.value,
                children: [
                  Overview(),
                  Overview(),
                  Overview(),
                  Overview(),
                  Overview()
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:Container(
                // height: 10.h,
                decoration: BoxDecoration(
                    // gradient: themeColor
                ),
                // child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       Spacer(),
                //       InkWell(
                //         onTap: (){
                //           // _bottomController.changeTabIndex(0);
                //         },
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //
                //             ImageIcon(
                //               AssetImage(
                //                 "assets/images/home.png",
                //               ),
                //               color:
                //               Colors.white,
                //
                //             ),
                //             Text("Home",
                //               // style: TextStyles(12.sp, FontWeight.w400, TextDecoration.none,
                //               //     textcolor
                //               // ),
                //             )
                //           ],
                //         ),
                //       ),
                //       Spacer(),
                //       InkWell(
                //         onTap: () {
                //           // _bottomController.changeTabIndex(1);
                //         },
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             ImageIcon(
                //               AssetImage(
                //                 "assets/images/history.png",
                //               ),
                //               color:
                //               Colors.white,
                //
                //             ),
                //             Text("History",
                //               // style: TextStyles(12.sp, FontWeight.w400, TextDecoration.none,
                //               //     textcolor
                //               // ),
                //             )
                //           ],
                //         ),
                //       ),
                //       Spacer(),
                //       InkWell(
                //         onTap: () {
                //           // _bottomController.changeTabIndex(2);
                //         },
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Image.asset("assets/images/chat.png",
                //               // height: 3.h,
                //             ),
                //             Text("Chats",
                //               // style: TextStyles(12.sp, FontWeight.w400, TextDecoration.none,
                //               //     textcolor
                //               // ),
                //             )
                //           ],
                //         ),
                //       ),
                //       Spacer(),
                //       InkWell(
                //         onTap: () {
                //           // _bottomController.changeTabIndex(3);
                //         },
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             ImageIcon(
                //               AssetImage(
                //                 "assets/images/points.png",
                //               ),
                //               color:
                //               Colors.white,
                //
                //             ),
                //             Text("Points",
                //               // style: TextStyles(12.sp, FontWeight.w400, TextDecoration.none,
                //               //     textcolor
                //               // ),
                //             )
                //           ],
                //         ),
                //       ),
                //       Spacer(),
                //       InkWell(
                //         onTap: () {
                //           // _bottomController.changeTabIndex(4);
                //         },
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             ImageIcon(
                //               AssetImage(
                //                 "assets/images/favs.png",
                //               ),
                //               color:
                //               Colors.white,
                //
                //             ),
                //             Text("Favs",
                //               // style: TextStyles(12.sp, FontWeight.w400, TextDecoration.none,
                //               //     textcolor
                //               // ),
                //             )
                //           ],
                //         ),
                //       ),
                //       Spacer()
                //     ]),
              ),
            )
          ],
        ),

        ),

    );
  }
}
