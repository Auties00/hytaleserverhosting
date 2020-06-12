import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';
import 'package:hosting/src/widget/web_image.dart';
import 'package:hosting/src/widget/web_navigation_item.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class WebNavigationBar extends StatefulWidget {
  final ItemScrollController controller;
  final bool showItems;
  const WebNavigationBar({this.controller, this.showItems = true});

  @override
  _WebNavigationBarState createState() => _WebNavigationBarState();
}

class _WebNavigationBarState extends State<WebNavigationBar> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final ScreenUtil screen = ScreenUtil();
    return LayoutBuilder(
      builder: (var context, var constraints){
        bool mobile = !widget.showItems || isMedium(constraints);
        return Container(
          width: double.maxFinite,
          height: screen.setHeight(50.0),
          color: BLUE_BACKGROUND,
          child: Row(
            mainAxisAlignment: widget.showItems ? MainAxisAlignment.spaceEvenly : MainAxisAlignment.start,
            children: [
              if(!widget.showItems) SizedBox(
                width: screen.setWidth(50.0),
              ),

              WebImage(
                'logo-full.png',
                fit: BoxFit.cover,
              ),

              WebNavigationItem(
                  name: 'HOME',
                  onClick: () => widget.controller.scrollTo(index: 0, duration: Duration(milliseconds: 500), curve: Curves.easeIn),
                  mobile: mobile
              ),

              WebNavigationItem(
                  name: 'QUICK START',
                  onClick: () => widget.controller.scrollTo(index: 4, duration: Duration(milliseconds: 500), curve: Curves.easeIn),
                  mobile: mobile
              ),

              WebNavigationItem(
                  name: 'FEAUTURES',
                  onClick: () => widget.controller.scrollTo(index: 6, duration: Duration(milliseconds: 500), curve: Curves.easeIn),
                  mobile: mobile
              ),

              WebNavigationItem(
                  name: 'PRICING',
                  onClick: () => widget.controller.scrollTo(index: 8, duration: Duration(milliseconds: 500), curve: Curves.easeIn),
                  mobile: mobile
              ),

              if(widget.showItems) FlatButton(
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

  @override
  bool get wantKeepAlive => true;
}
