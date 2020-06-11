import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';
import 'package:hosting/src/widget/web_footer.dart';
import 'package:hosting/src/widget/web_location_item.dart';
import 'package:hosting/src/widget/web_navigation_bar.dart';

class PurchasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (var context, var constraints) {
          return isMedium(constraints) ? PurchasePageMobile() : PurchasePageDesktop();
        }
    );
  }
}

class PurchasePageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = ScreenUtil();
    return Scaffold(
        body: Container(
            color: BLUE_BACKGROUND,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WebNavigationBar(
                    showItems: false
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                        'SELECT A SERVER',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.barlow(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0
                        )
                    ),

                    SizedBox(
                      height: screen.setHeight(10.0),
                    ),

                    Text(
                        'Remember to choose the closest server to you!',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.barlow(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0
                        )
                    ),

                    SizedBox(
                      height: screen.setHeight(30.0),
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WebLocationItem(
                          name: 'North America',
                          orientation: Axis.horizontal,
                        ),

                        WebLocationItem(
                          name: 'Netherlands',
                          orientation: Axis.horizontal,
                        ),

                        WebLocationItem(
                          name: 'Germany',
                          orientation: Axis.horizontal,
                        ),

                        WebLocationItem(
                          name: 'France',
                          orientation: Axis.horizontal,
                        ),

                        WebLocationItem(
                          name: 'United Kindom',
                          orientation: Axis.horizontal,
                        ),

                        WebLocationItem(
                          name: 'Sweden',
                          orientation: Axis.horizontal,
                        ),
                      ],
                    ),
                  ],
                ),

                WebFooter()
              ],
            )
        )
    );
  }
}

class PurchasePageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = ScreenUtil();
    return Scaffold(
        body: Container(
            color: BLUE_BACKGROUND,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WebNavigationBar(
                    showItems: false
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                        'SELECT A SERVER',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.barlow(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0
                        )
                    ),

                    SizedBox(
                      height: screen.setHeight(10.0),
                    ),

                    Text(
                        'Remember to choose the closest server to you!',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.barlow(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0
                        )
                    ),

                    SizedBox(
                      height: screen.setHeight(30.0),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WebLocationItem(
                            name: 'North America'
                        ),

                        WebLocationItem(
                            name: 'Netherlands'
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WebLocationItem(
                            name: 'Germany'
                        ),

                        WebLocationItem(
                            name: 'France'
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WebLocationItem(
                            name: 'United Kindom'
                        ),

                        WebLocationItem(
                            name: 'Sweden'
                        ),
                      ],
                    )
                  ],
                ),

                WebFooter()
              ],
            )
        )
    );
  }
}