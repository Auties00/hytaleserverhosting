import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';

class WebFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (var context, var constraints){
        return isMedium(constraints) ? WebFooterMobile() : WebFooterDesktop();
      }
    );
  }
}

class WebFooterDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: screen.setHeight(100.0),
      color: BLUE_ACCENT,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
              'Copyright © 2019-2020 Hypixel Server Hosting Ltd. All rights reserved.',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: GoogleFonts.barlow(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              )
          ),
          
          
          Image.asset('assets/images/cc.png')
        ],
      ),
    );
  }
}

class WebFooterMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: screen.setHeight(200.0),
      color: BLUE_ACCENT,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
              'Copyright © 2019-2020 Hypixel Server Hosting Ltd.\nAll rights reserved.',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: GoogleFonts.barlow(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              )
          ),


          Image.asset('assets/images/cc.png')
        ],
      ),
    );
  }
}

