import 'package:flutter/material.dart';
import 'package:hosting/src/constant/dimension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';

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
        width: double.maxFinite,
        height: setHeight(50.0),
        color: BLUE,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Text(
              isSmall(constraints)
                  ? "SIGN UP TO BE NOTIFIED WHEN HYTALES BECOMES AVAILABLE!"
                  : "HYTALE IS GOING TO BE RELEASED SOON, SIGN UP TO BE NOTIFIED WHEN IT'S AVAILABLE!",
              textAlign: TextAlign.center,
              style: GoogleFonts.barlow(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              )),
        ),
      );
    });
  }

  @override
  bool get wantKeepAlive => true;
}
