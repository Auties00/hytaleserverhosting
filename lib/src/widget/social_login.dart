import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/widget/web_image.dart';

class SocialLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.0,
      height: 50.0,
      child: TextButton(
        style: ButtonStyle(
            mouseCursor: MaterialStateMouseCursor.clickable,
            backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary)
        ),
        onPressed: () {},
        child: Row(
          children: [
            SizedBox(
              width: 38.0,
            ),
            SizedBox(
                width: 50.0,
                height: 50.0,
                child: WebImage('pp.png')),
            SizedBox(
              width: 38.0,
            ),
            Text('Paypal',
                textAlign: TextAlign.center,
                style: GoogleFonts.barlow(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0)),
            SizedBox(
              width: 38.0,
            ),
          ],
        ),
      ),
    );
  }
}
