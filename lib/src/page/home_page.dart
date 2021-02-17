// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosting/src/constant/dimension.dart';
import 'package:hosting/src/util/screen_util.dart';
import 'package:hosting/src/widget/web_announcement.dart';
import 'package:hosting/src/widget/web_divider.dart';
import 'package:hosting/src/widget/web_features.dart';
import 'package:hosting/src/widget/web_footer.dart';
import 'package:hosting/src/widget/web_introduction.dart';
import 'package:hosting/src/widget/web_navigation_bar.dart';
import 'package:hosting/src/widget/web_pricing.dart';
import 'package:hosting/src/widget/web_video_player.dart';
import 'package:platform_detect/platform_detect.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();
  final List<GlobalKey> _keys = [];

  @override
  Widget build(BuildContext context) {
    reset();
    _keys.clear();
    var size = MediaQuery.of(context).size;
    ScreenUtil.init(context, width: size.width, height: size.height);

    return Scaffold(
      body: Container(
          child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (e) {
                e.disallowGlow();
                return false;
              },

              child: _buildBody()
          )
      ),
    );
  }

  Widget _buildBody(){
    return LayoutBuilder(
      builder: (context, constraints) {
        _initWebListeners(constraints);
        return isSmall(constraints) && browser.isFirefox ? SingleChildScrollView(
          child: Column(
            children: [
              WebNavigationBar(
                  key: GlobalKey()..addKeyToList(_keys),
                  keys: _keys
              ),

              WebAnnouncement(
                key: GlobalKey()..addKeyToList(_keys),
              ),

              WebPlayer(
                  key: GlobalKey()..addKeyToList(_keys),
                  link: 'https://i.imgur.com/VPTYKX2.mp4'
              ),

              WebDivider(),

              WebIntroduction(
                key: GlobalKey()..addKeyToList(_keys),
              ),

              WebDivider(),

              WebFeatures(
                key: GlobalKey()..addKeyToList(_keys),
              ),

              WebDivider(),

              WebPricing(
                key: GlobalKey()..addKeyToList(_keys),
              ),

              WebFooter(
                key: GlobalKey()..addKeyToList(_keys),
              )
            ],
          ),
        ) : ListView(
          controller: _controller,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            WebNavigationBar(
                key: GlobalKey()..addKeyToList(_keys),
                keys: _keys
            ),

            WebAnnouncement(
              key: GlobalKey()..addKeyToList(_keys),
            ),

            WebPlayer(
                key: GlobalKey()..addKeyToList(_keys),
                link: 'https://i.imgur.com/VPTYKX2.mp4'
            ),

            WebDivider(),

            WebIntroduction(
              key: GlobalKey()..addKeyToList(_keys),
            ),

            WebDivider(),

            WebFeatures(
              key: GlobalKey()..addKeyToList(_keys),
            ),

            WebDivider(),

            WebPricing(
              key: GlobalKey()..addKeyToList(_keys),
            ),

            WebFooter(
              key: GlobalKey()..addKeyToList(_keys),
            )
          ],

          addAutomaticKeepAlives: true,
          addRepaintBoundaries: true,
          addSemanticIndexes: true,
          cacheExtent: 9999,
        );
      },
    );
  }

  void _initWebListeners(constraints){
    document
      ..onKeyDown.listen((e) {
        if (e.keyCode == 38) {

        }else if(e.keyCode == 40) {

        }
      });
  }
}

extension GlobalKeyExtension on GlobalKey {
  void addKeyToList(List<GlobalKey> keys){
    keys.add(this);
  }
}