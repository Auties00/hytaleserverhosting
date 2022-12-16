import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class WebPlayer extends StatefulWidget {
  final String link;

  const WebPlayer({Key key, @required this.link}) : super(key: key);

  @override
  _WebPlayerState createState() => _WebPlayerState();
}

class _WebPlayerState extends State<WebPlayer> with AutomaticKeepAliveClientMixin {
  VideoPlayerController _controller;

  get wantKeepAlive => true;

  @override
  void initState() {
    _controller = VideoPlayerController.network(widget.link);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
        child: FutureBuilder(
          future: _controller.initialize(),
          builder: (context, snapshot) {
            _controller.play();
            return AspectRatio(
                aspectRatio: 16 / 9,
                child: VideoPlayer(_controller)
            );
          }
        )
    );
  }
}
