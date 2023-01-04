import 'package:flutter/material.dart';
import 'package:hosting/src/util/dimension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/util/screen.dart';
import 'package:hosting/src/widget/web_image.dart';
import 'package:platform_detect/platform_detect.dart';

class WebFooter extends StatefulWidget {
  WebFooter({Key? key}) : super(key: key);

  @override
  _WebFooterState createState() => _WebFooterState();
}

class _WebFooterState extends State<WebFooter>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LayoutBuilder(builder: (var context, var constraints) {
      return isMedium(constraints) ? WebFooterMobile() : WebFooterDesktop();
    });
  }

  @override
  bool get wantKeepAlive => true;
}

class WebFooterDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Theme.of(context).colorScheme.secondary,
      child: Padding(
        padding: EdgeInsets.only(
          top: setHeight(25.0),
          bottom: setHeight(25.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
                'Copyright © 2019-2020 Hypixel Server Hosting Ltd.\n${browser.isChrome ? 'Chrome Browser' : browser.isFirefox ? 'Firefox Browser' : browser.isSafari ? 'Safari Browser' : 'Other browser'} - Desktop View',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: GoogleFonts.barlow(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                )),
            WebImage('cc.png')
          ],
        ),
      ),
    );
  }
}

class WebFooterMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Theme.of(context).colorScheme.secondary,
      child: Padding(
        padding: EdgeInsets.only(
          top: setHeight(25.0),
          bottom: setHeight(25.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
                'Copyright © 2019-2020 Hypixel Server Hosting Ltd.\n${browser.isChrome ? 'Chrome Browser' : browser.isFirefox ? 'Firefox Browser' : browser.isSafari ? 'Safari Browser' : 'Other browser'} - Mobile View',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: GoogleFonts.barlow(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                )
            ),

            SizedBox(
              height: setHeight(25.0),
            ),

            WebImage('cc.png')
          ],
        ),
      ),
    );
  }
}
