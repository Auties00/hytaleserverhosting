import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/widget/web_image.dart';

class WebPaymentItem extends StatelessWidget {
  final String name;
  final String asset;
  final Axis orientation;
  final double width;
  final double height;
  final Function() onTap;

  const WebPaymentItem(
      {@required this.name,
      @required this.asset,
      this.orientation = Axis.vertical,
      this.onTap,
      this.width = 48.0,
      this.height = 48.0});

  Widget _buildBody(var screen) {
    if (orientation == Axis.vertical) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: height,
              width: width,
              child: WebImage('$asset.png', fit: BoxFit.fill)),
          Text(name,
              textAlign: TextAlign.center,
              style: GoogleFonts.barlow(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0)),
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: screen.setWidth(15.0),
        ),
        SizedBox(height: height, width: width, child: WebImage('$asset.png')),
        SizedBox(
          width: screen.setWidth(15.0),
        ),
        Text(name,
            textAlign: TextAlign.center,
            style: GoogleFonts.barlow(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16.0)),
        SizedBox(
          width: screen.setWidth(15.0),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return SizedBox(
      width: orientation == Axis.vertical
          ? screen.setWidth(200.0)
          : screen.setWidth(300.0),
      height: orientation == Axis.vertical
          ? screen.setHeight(100.0)
          : screen.setHeight(50.0),
      child: InkWell(
        onTap: onTap,
        child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: BLUE_ACCENT,
            child: _buildBody(screen)),
      ),
    );
  }
}
