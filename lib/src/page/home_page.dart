import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hosting/src/widget/native_scroll.dart';
import 'package:hosting/src/widget/web_announcement.dart';
import 'package:hosting/src/widget/web_divider.dart';
import 'package:hosting/src/widget/web_features.dart';
import 'package:hosting/src/widget/web_footer.dart';
import 'package:hosting/src/widget/web_introduction.dart';
import 'package:hosting/src/widget/web_navigation_bar.dart';
import 'package:hosting/src/widget/web_pricing.dart';
import 'package:collection/collection.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<GlobalKey> _keys = [];

  @override
  void initState() {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => document.getElementsByClassName("center").firstOrNull?.remove());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _keys.clear();
    return Scaffold(
      body: SelectionArea(
        child: HtmlScrollView(
            children: [
              WebNavigationBar(
                  key: _createRegisteredKey(),
                  keys: _keys
              ),

              WebAnnouncement(
                key: _createRegisteredKey(),
              ),

              WebIntroduction(
                key: _createRegisteredKey(),
              ),

              WebDivider(
                key: GlobalKey()
              ),

              WebFeatures(
                key: _createRegisteredKey(),
              ),

              WebDivider(
                  key: GlobalKey()
              ),

              WebPricing(
                key: _createRegisteredKey(),
              ),

              WebFooter(
                key: _createRegisteredKey(),
              )
            ]
        ),
      ),
    );
  }

  GlobalKey _createRegisteredKey(){
    var key = GlobalKey();
    _keys.add(key);
    return key;
  }
}