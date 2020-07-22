// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosting/src/constant/dimension.dart';
import 'package:hosting/src/util/screen_util.dart';
import 'package:hosting/src/widget/web_announcement.dart';
import 'package:hosting/src/widget/web_divider.dart';
import 'package:hosting/src/widget/web_feautures.dart';
import 'package:hosting/src/widget/web_footer.dart';
import 'package:hosting/src/widget/web_introduction.dart';
import 'package:hosting/src/widget/web_navigation_bar.dart';
import 'package:hosting/src/widget/web_pricing.dart';
import 'package:hosting/src/widget/web_video_player.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<String, ByteData> cache = {};
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionsListener = ItemPositionsListener.create();
  final ScrollController _mobileScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    reset();
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
        return !isMedium(constraints) ? ScrollablePositionedList.builder(
          itemScrollController: _itemScrollController,
          itemPositionsListener: _itemPositionsListener,
          minCacheExtent: 10,
          itemBuilder: (var context, var index) {
            switch (index) {
              case 0: return WebNavigationBar(
                  controller: _itemScrollController
              );

              case 1:return WebAnnouncement();

              case 2: return WebPlayer(
                  link: 'https://i.imgur.com/VPTYKX2.mp4'
              );

              case 4: return WebIntroduction();

              case 6: return WebFeatures();

              case 8: return WebPricing();

              case 9: return WebFooter();
            }

            return WebDivider();
          },
          itemCount: 10,
        ) : ListView.builder(
          controller: _mobileScrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (var context, var index) {
            switch (index) {
              case 0: return WebNavigationBar(
                  controller: _itemScrollController
              );

              case 1:return WebAnnouncement();

              case 2: return WebPlayer(
                  link: 'https://i.imgur.com/VPTYKX2.mp4'
              );

              case 4: return WebIntroduction();

              case 6: return WebFeatures();

              case 8: return WebPricing();

              case 9: return WebFooter();
            }

            return WebDivider();
          },
          itemCount: 10
        );
      },
    );
  }

  void _initWebListeners(constraints){
    document
      ..onKeyDown.listen((e) {
        int index = _itemPositionsListener.itemPositions.value.isNotEmpty ? _itemPositionsListener.itemPositions.value.first.index : 0;
        void animateTo(int pos) {
          if(isMedium(constraints)) {
            return;
          }

          _itemScrollController.scrollTo(
            index: pos,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        }


        if (e.keyCode == 38) {
          switch (index) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
              animateTo(0);
              break;

            case 5:
            case 6:
              animateTo(4);
              break;

            case 7:
            case 8:
              animateTo(5);
              break;

            case 9:
            case 10:
              animateTo(7);
              break;
          }
        }else if(e.keyCode == 40) {
          switch (index) {
            case 0:
            case 1:
              animateTo(2);
              break;

            case 2:
            case 3:
              animateTo(4);
              break;

            case 4:
            case 5:
              animateTo(6);
              break;

            case 6:
            case 7:
              animateTo(8);
              break;

            case 8:
              animateTo(9);
              break;
          }
        }
      });
  }
}