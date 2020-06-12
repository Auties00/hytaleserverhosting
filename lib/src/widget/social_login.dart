import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';

class SocialLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = ScreenUtil();
    return SizedBox(
      width: screen.setWidth(350.0),
      height: screen.setHeight(50.0),
      child: FlatButton(
        onPressed: () {},
        color: BLUE_ACCENT,
        child: Row(
          children: [
            SizedBox(
              width: screen.setWidth(38.0),
            ),

            SizedBox(
                width: screen.setWidth(50.0),
                height: screen.setWidth(50.0),
                child: Image.asset('assets/images/pp.png')
            ),

            SizedBox(
              width: screen.setWidth(38.0),
            ),

            Text(
                'Paypal',
                textAlign: TextAlign.center,
                style: GoogleFonts.barlow(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16.0)
            ),

            SizedBox(
              width: screen.setWidth(38.0),
            ),
          ],
        ),
      ),
    );
  }
}
