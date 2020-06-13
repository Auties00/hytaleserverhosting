import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';
import 'package:hosting/src/widget/web_point.dart';

class WebIntroduction extends StatefulWidget {
  @override
  _WebIntroductionState createState() => _WebIntroductionState();
}

class _WebIntroductionState extends State<WebIntroduction>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LayoutBuilder(builder: (var context, var constraints) {
      return isMedium(constraints)
          ? WebIntroductionMobile()
          : WebIntroductionDesktop();
    });
  }

  @override
  bool get wantKeepAlive => true;
}

class WebIntroductionDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('BODY');
    final ScreenUtil screen = ScreenUtil();
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: screen.setHeight(500.0),
      color: BLUE_BACKGROUND,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WebPoint(
                name: 'CHOOSE A SERVER',
                description: ' Seven servers around the globe',
                asset: 'location.jpg',
                index: 1,
              ),
              WebPoint(
                name: 'SELECT A PLAN',
                description: 'Starting at €7.99 per month',
                asset: 'price.jpg',
                index: 2,
              ),
              WebPoint(
                name: 'START PLAYING',
                description: 'Your rules, your friends, your game',
                asset: 'play.jpg',
                index: 3,
              ),
            ],
          ),
          OutlineButton(
            onPressed: () =>
                Navigator.of(context).pushNamed('/purchase/location'),
            highlightedBorderColor: Colors.transparent,
            highlightElevation: 0.0,
            hoverColor: Colors.yellow[800].withOpacity(0.5),
            child: Text('CREATE YOUR SERVER',
                style: GoogleFonts.barlow(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            borderSide: BorderSide(width: 3.0, color: BLUE_ACCENT),
          ),
        ],
      ),
    );
  }
}

class WebIntroductionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: screen.setHeight(1000.0),
      color: BLUE_BACKGROUND,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WebPoint(
            name: 'CHOOSE A SERVER',
            description: ' Seven servers around the globe',
            asset: 'location.jpg',
            index: 1,
          ),
          WebPoint(
            name: 'SELECT A PLAN',
            description: 'Starting at €7.99 per month',
            asset: 'price.jpg',
            index: 2,
          ),
          WebPoint(
            name: 'START PLAYING',
            description: 'Your rules, your friends, your game',
            asset: 'play.jpg',
            index: 3,
          ),
          OutlineButton(
            onPressed: () =>
                Navigator.of(context).pushNamed('/purchase/location'),
            highlightedBorderColor: Colors.transparent,
            highlightElevation: 0.0,
            hoverColor: Colors.yellow[800].withOpacity(0.5),
            child: Text('CREATE YOUR SERVER',
                style: GoogleFonts.barlow(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            borderSide: BorderSide(width: 3.0, color: BLUE_ACCENT),
          ),
        ],
      ),
    );
  }
}
