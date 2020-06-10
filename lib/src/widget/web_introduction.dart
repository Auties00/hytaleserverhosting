import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';
import 'package:hosting/src/widget/web_point.dart';

class WebIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (var context, var constraints){
        return isMedium(constraints) ? WebIntroductionMobile() : WebIntroductionDesktop();
      }
    );
  }
}

class WebIntroductionDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: screen.setHeight(500.0),
      color: GREY,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(

            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WebPoint(
                name: 'CHOOSE A SERVER',
                description: 'Over six servers all of the world',
                asset:  'assets/images/location.jpg',
                index: 1,
              ),

              WebPoint(
                name: 'SELECT A PLAN',
                description: 'Starting at \$9.99 per month',
                asset: 'assets/images/price.jpg',
                index: 2,
              ),

              WebPoint(
                name: 'START PLAYING',
                description: 'Your rules, your friends, your game',
                asset:      'assets/images/play.jpg',
                index: 3,
              ),
            ],
          ),

          Expanded(
            child: SizedBox(

            ),
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
      color: GREY,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WebPoint(
            name: 'CHOOSE A SERVER',
            description: 'Over six servers all of the world',
            asset:  'assets/images/location.jpg',
            index: 1,
          ),

          WebPoint(
            name: 'SELECT A PLAN',
            description: 'Starting at \$9.99 per month',
            asset: 'assets/images/price.jpg',
            index: 2,
          ),

          WebPoint(
            name: 'START PLAYING',
            description: 'Your rules, your friends, your game',
            asset:      'assets/images/play.jpg',
            index: 3,
          ),
        ],
      ),
    );
  }
}
