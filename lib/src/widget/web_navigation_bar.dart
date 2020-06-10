import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';
import 'package:hosting/src/widget/web_asset_logo.dart';
import 'package:hosting/src/widget/web_navigation_item.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class WebNavigationBar extends StatelessWidget {
  final ItemScrollController controller;
  const WebNavigationBar({this.controller});
  
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return LayoutBuilder(
      builder: (var context, var constraints){
        bool mobile = isMedium(constraints);
        return Container(
          width: double.maxFinite,
          height: screen.setHeight(50.0),
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WebAssetLogo(
                  asset: 'assets/images/logo-full.png'
              ),

              WebNavigationItem(
                  name: 'HOME',
                  onClick: () => controller.scrollTo(index: 0, duration: Duration(milliseconds: 500), curve: Curves.easeIn),
                  mobile: mobile
              ),

              WebNavigationItem(
                  name: 'QUICK START',
                  onClick: () => controller.scrollTo(index: 4, duration: Duration(milliseconds: 500), curve: Curves.easeIn),
                  mobile: mobile
              ),

              WebNavigationItem(
                  name: 'FEAUTURES',
                  onClick: () => controller.scrollTo(index: 6, duration: Duration(milliseconds: 500), curve: Curves.easeIn),
                  mobile: mobile
              ),

              WebNavigationItem(
                  name: 'PRICING',
                  onClick: () => controller.scrollTo(index: 8, duration: Duration(milliseconds: 500), curve: Curves.easeIn),
                  mobile: mobile
              ),

              FlatButton(
                color: BLUE,
                onPressed: () {},
                child:  Text(
                    'GET STARTED',
                    style: GoogleFonts.barlow(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    )
                ),
              )
            ],
          ),
        );
      }
    );
  }
}
