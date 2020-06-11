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
  final Color color;
  final bool showItems;
  const WebNavigationBar({this.controller, this.showItems = true, this.color = Colors.black});
  
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return LayoutBuilder(
      builder: (var context, var constraints){
        bool mobile = !showItems || isMedium(constraints);
        return Container(
          width: double.maxFinite,
          height: screen.setHeight(50.0),
          color: color,
          child: Row(
            mainAxisAlignment: showItems ? MainAxisAlignment.spaceEvenly : MainAxisAlignment.start,
            children: [
              if(!showItems) SizedBox(
                width: screen.setWidth(50.0),
              ),

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

              if(showItems) FlatButton(
                color: BLUE,
                onPressed: () => Navigator.of(context).pushNamed('/login'),
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
