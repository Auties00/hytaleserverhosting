import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/dimension.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';
import 'package:hosting/src/widget/web_image.dart';
import 'package:hosting/src/widget/web_navigation_item.dart';

class WebNavigationBar extends StatefulWidget {
  final List<GlobalKey> keys;
  final bool showItems;

  const WebNavigationBar({Key key, this.keys, this.showItems = true}) : super(key: key);

  @override
  _WebNavigationBarState createState() => _WebNavigationBarState();
}

class _WebNavigationBarState extends State<WebNavigationBar> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LayoutBuilder(builder: (var context, var constraints) {
      bool mobile = !widget.showItems || isMedium(constraints);
      return Container(
        width: double.maxFinite,
        height: setHeight(50.0),
        color: BLUE_BACKGROUND,
        child: Row(
          mainAxisAlignment: widget.showItems ? MainAxisAlignment.spaceEvenly : MainAxisAlignment.start,
          children: [
            if (!widget.showItems)
              SizedBox(
                width: setWidth(15.0),
              ),

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: WebImage(
                'logo-full.png',
                fit: BoxFit.cover,
              ),
            ),

            WebNavigationItem(
                name: 'HOME',
                onClick: () => Scrollable.ensureVisible(widget.keys[0].currentContext),
                mobile: mobile
            ),
            WebNavigationItem(
                name: 'QUICK START',
                onClick: () => Scrollable.ensureVisible(widget.keys[3].currentContext),
                mobile: mobile
            ),
            WebNavigationItem(
                name: 'FEAUTURES',
                onClick: () => Scrollable.ensureVisible(widget.keys[4].currentContext),
                mobile: mobile
            ),
            WebNavigationItem(
              name: 'PRICING',
                onClick: () => Scrollable.ensureVisible(widget.keys[5].currentContext),
                mobile: mobile
            ),
            if (widget.showItems)
              FlatButton(
                mouseCursor: MaterialStateMouseCursor.clickable,
                color: BLUE,
                onPressed: () => Navigator.pushNamed(context, '/login'),
                child: Text('GET STARTED',
                    style: GoogleFonts.barlow(
                        color: Colors.white, fontWeight: FontWeight.bold
                    )
                ),
              )
          ],
        ),
      );
    });
  }

  @override
  bool get wantKeepAlive => true;
}
