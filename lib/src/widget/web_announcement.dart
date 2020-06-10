import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';

class WebAnnouncement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return LayoutBuilder(
      builder: (var context, var constraints){
        return  Container(
          alignment: Alignment.center,
          width: double.maxFinite,
          height: screen.setHeight(50.0),
          color: BLUE,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
                isSmall(constraints) ? "SIGN UP TO BE NOTIFIED WHEN HYTALES BECOMES AVAILABLE!" : "HYTALE IS GOING TO BE RELEASED SOON, SIGN UP TO BE NOTIFIED WHEN IT'S AVAILABLE!",
                textAlign: TextAlign.center,
                style: GoogleFonts.barlow(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                )
            ),
          ),
        );
      }
    );
  }
}
