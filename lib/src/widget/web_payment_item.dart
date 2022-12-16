import 'package:flutter/material.dart';
import 'package:hosting/src/util/dimension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/util/color.dart';
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

  Widget _buildBody() {
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
          width: setWidth(15.0),
        ),
        SizedBox(height: height, width: width, child: WebImage('$asset.png')),
        SizedBox(
          width: setWidth(15.0),
        ),
        Text(name,
            textAlign: TextAlign.center,
            style: GoogleFonts.barlow(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16.0)),
        SizedBox(
          width: setWidth(15.0),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: orientation == Axis.vertical
          ? setWidth(200.0)
          : setWidth(300.0),
      height: orientation == Axis.vertical
          ? setHeight(100.0)
          : setHeight(50.0),
      child: InkWell(
        onTap: onTap,
        child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: BLUE_ACCENT,
            child: _buildBody()),
      ),
    );
  }
}
