import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';

class WebLocationItem extends StatelessWidget {
  final String name;
  final Axis orientation;

  const WebLocationItem({@required this.name, this.orientation = Axis.vertical});

  Widget _buildBody(var screen){
    if(orientation == Axis.vertical){
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/${name.toLowerCase()}.png'),

          Text(
              name,
              textAlign: TextAlign.center,
              style: GoogleFonts.barlow(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0
              )
          ),
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

        Image.asset('assets/images/${name.toLowerCase()}.png'),

        SizedBox(
          width: screen.setWidth(15.0),
        ),

        Text(
            name,
            textAlign: TextAlign.center,
            style: GoogleFonts.barlow(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0
            )
        ),

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
      width: orientation == Axis.vertical ? screen.setWidth(200.0) : screen.setWidth(300.0),
      height: orientation == Axis.vertical ?screen.setHeight(100.0) : screen.setHeight(50.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: BLUE_ACCENT,
        child: _buildBody(screen)
      ),
    );
  }
}
