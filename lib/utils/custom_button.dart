
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  var onPressed;
  var text;

   CustomButton({Key? key,@required this.onPressed, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return RawMaterialButton(
      onPressed: onPressed ,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
        textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 16),
       child: Padding(
        padding:  EdgeInsets.all(10.0),
        child: Container(
          height: 30,
          width: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.blue,
            width: 2,
            )

          ),
        ),
      ),
    );
  }
}
