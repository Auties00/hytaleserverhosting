import 'package:flutter/material.dart';
import 'package:hosting/src/util/dimension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/widget/web_image.dart';

class SocialLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: setWidth(350.0),
      height: setHeight(50.0),
      child: TextButton(
        style: ButtonStyle(
            mouseCursor: MaterialStateMouseCursor.clickable,
            backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary)
        ),
        onPressed: () {},
        child: Row(
          children: [
            SizedBox(
              width: setWidth(38.0),
            ),
            SizedBox(
                width: setWidth(50.0),
                height: setWidth(50.0),
                child: WebImage('pp.png')),
            SizedBox(
              width: setWidth(38.0),
            ),
            Text('Paypal',
                textAlign: TextAlign.center,
                style: GoogleFonts.barlow(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0)),
            SizedBox(
              width: setWidth(38.0),
            ),
          ],
        ),
      ),
    );
  }
}
