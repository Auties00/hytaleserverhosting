import 'package:flutter/material.dart';
import 'package:hosting/src/util/dimension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/util/color.dart';
import 'package:hosting/src/util/screen.dart';

class WebAnnouncement extends StatefulWidget {
  WebAnnouncement({Key key}) : super(key: key);

  @override
  _WebAnnouncementState createState() => _WebAnnouncementState();
}

class _WebAnnouncementState extends State<WebAnnouncement>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LayoutBuilder(builder: (var context, var constraints) {
      return Container(
        alignment: Alignment.center,
        color: BLUE,
        child: Padding(
          padding: EdgeInsets.only(
            top: setHeight(12.5),
            bottom: setHeight(12.5),
            left: setWidth(12.5),
            right: setWidth(12.5),
          ),
          child: Text(
              isSmall(constraints)
                  ? "SIGN UP TO BE NOTIFIED WHEN HYTALE BECOMES AVAILABLE!"
                  : "HYTALE IS GOING TO BE RELEASED SOON, SIGN UP TO BE NOTIFIED WHEN IT'S AVAILABLE!",
              textAlign: TextAlign.center,
              style: GoogleFonts.barlow(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              )
          ),
        ),
      );
    });
  }

  @override
  bool get wantKeepAlive => true;
}
