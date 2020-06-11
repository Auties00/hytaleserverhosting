import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosting/src/constant/color.dart';

class WebReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: screen.setHeight(500.0),
      color:  BLUE_BACKGROUND,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

        ],
      ),
    );
  }
}
