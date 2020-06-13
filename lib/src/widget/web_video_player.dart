import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class WebVideoPlayer extends StatefulWidget {
  final VideoPlayerController controller;

  const WebVideoPlayer({this.controller});

  @override
  _WebVideoPlayerState createState() => _WebVideoPlayerState();
}

class _WebVideoPlayerState extends State<WebVideoPlayer>
    with AutomaticKeepAliveClientMixin {
  get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
        child: AspectRatio(
            aspectRatio: 16 / 9, child: VideoPlayer(widget.controller)));
  }
}
