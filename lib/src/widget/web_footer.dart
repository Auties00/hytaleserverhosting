import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/util/screen.dart';
import 'package:hosting/src/widget/web_image.dart';
import 'package:platform_detect/platform_detect.dart';
import 'dart:js' as js;

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
      var medium = isMedium(constraints);
      var children = [
        Text(
            'Copyright © 2019-2023 Hytale Server Hosting Ltd\n$_browserName - ${_getScreenType(constraints)} ${js.context['flutterCanvasKit'] != null ? "Canvas" : "HTML"} View - Version 0.2',
            textAlign: TextAlign.center,
            style: GoogleFonts.barlow(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            )
        ),
        if(medium)
          SizedBox(
            height: 25.0,
          ),
        WebImage('cc.png')
      ];
      return Container(
          alignment: Alignment.center,
          color: Theme.of(context).colorScheme.secondary,
          padding: EdgeInsets.only(
            top: 25.0,
            bottom: 25.0,
          ),
          child: _rowOrColumn(medium, children)
      );
    });
  }

  String _getScreenType(BoxConstraints constraints) => getScreenType(constraints)
      .name
      .toLowerCase()
      .capitalize();

  String get _browserName => browser.isChrome ? 'Chrome Browser'
      : browser.isFirefox ? 'Firefox Browser'
      : browser.isSafari ? 'Safari Browser'
      : 'Other browser';

  Widget _rowOrColumn(bool medium, List<Widget> children) {
    if (medium) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: children
      );
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: children
    );
  }

  @override
  bool get wantKeepAlive => true;
}

extension _StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}