import 'package:flutter/material.dart';
import 'package:hosting/src/util/dimension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/widget/web_image.dart';

class WebLocationItem extends StatelessWidget {
  final String name;
  final Axis orientation;
  final Function()? onTap;

  const WebLocationItem(
      {required this.name, this.orientation = Axis.vertical, this.onTap});

  Widget _buildBody() {
    if (orientation == Axis.vertical) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WebImage('${name.toLowerCase()}.png'),
          Text(name,
              textAlign: TextAlign.center,
              style: GoogleFonts.barlow(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
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
        WebImage('${name.toLowerCase()}.png'),
        SizedBox(
          width: setWidth(15.0),
        ),
        Text(name,
            textAlign: TextAlign.center,
            style: GoogleFonts.barlow(
                color: Colors.white,
                fontWeight: FontWeight.bold,
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
      width: orientation == Axis.vertical ? setWidth(150.0) : setWidth(300.0),
      height: orientation == Axis.vertical ? setHeight(100.0) : setHeight(50.0),
      child: InkWell(
        onTap: onTap,
        child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            color: Theme.of(context).colorScheme.secondary,
            child: _buildBody()
        ),
      ),
    );
  }
}
