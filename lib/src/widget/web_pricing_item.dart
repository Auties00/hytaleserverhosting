import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/widget/web_image.dart';

class WebPricingItem extends StatelessWidget {
  final String title;
  final String price;
  final String players;
  final String space;
  final String ram;
  final bool big;
  final Function onTap;

  const WebPricingItem(
      {@required this.title,
      @required this.price,
      @required this.players,
      @required this.space,
      @required this.ram,
      this.big = false,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return Container(
      width: screen.setWidth(250.0),
      height: screen.setHeight(400.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: onTap,
              child: Container(
                width: screen.setWidth(250.0),
                height: screen.setHeight(350.0),
                decoration: BoxDecoration(
                  color: BLUE_ACCENT,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screen.setHeight(70.0),
                    ),
                    Text(title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.barlow(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0)),
                    SizedBox(
                      height: screen.setHeight(5.0),
                    ),
                    Text('$players Player Slots',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.barlow(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0)),
                    SizedBox(
                      height: screen.setHeight(30.0),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '',
                        children: <TextSpan>[
                          TextSpan(
                              text: price,
                              style: GoogleFonts.barlow(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28.0)),
                          TextSpan(
                              text: '/mo',
                              style: GoogleFonts.barlow(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screen.setHeight(30.0),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '',
                        children: <TextSpan>[
                          TextSpan(
                              text: space,
                              style: GoogleFonts.barlow(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0)),
                          TextSpan(
                              text: ' GB SSD',
                              style: GoogleFonts.barlow(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24.0)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screen.setHeight(30.0),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '',
                        children: <TextSpan>[
                          TextSpan(
                              text: ram,
                              style: GoogleFonts.barlow(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0)),
                          TextSpan(
                              text: ' MB Ram',
                              style: GoogleFonts.barlow(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24.0)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: WebImage('${title.toLowerCase()}.png', fit: BoxFit.cover)),
        ],
      ),
    );
  }
}
