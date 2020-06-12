import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosting/src/widget/web_announcement.dart';
import 'package:hosting/src/widget/web_divider.dart';
import 'package:hosting/src/widget/web_feautures.dart';
import 'package:hosting/src/widget/web_footer.dart';
import 'package:hosting/src/widget/web_introduction.dart';
import 'package:hosting/src/widget/web_pricing.dart';
import 'package:hosting/src/widget/web_navigation_bar.dart';
import 'package:hosting/src/widget/web_video_player.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionsListener = ItemPositionsListener.create();
  VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();
    _videoController= VideoPlayerController.network('https://srv-file19.gofile.io/download/YvTJlN/videoplayback.mp4');
    _videoController.setLooping(true);
    _videoController.setVolume(0.0);
    _videoController.initialize().then((value) {
      setState(() {
        _videoController.play();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    ScreenUtil.init(context, width: size.width, height: size.height);


    return Scaffold(
      body: Container(
        child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (e) {
              e.disallowGlow();
              return false;
            },
            child: LayoutBuilder(
                      builder: (var context, var constraints) => SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            children: [
                              WebNavigationBar(
                                  controller: _itemScrollController
                              ),
                              WebAnnouncement(),
                              WebVideoPlayer(
                                controller: _videoController,
                              ),
                              WebDivider(),
                              WebIntroduction(),
                              WebDivider(),
                              WebFeatures(),
                              WebDivider(),
                              WebPricing(),
                              WebFooter(),
                            ],
                          )
                      )
                  )
        ),
      ),
    );
  }
}
