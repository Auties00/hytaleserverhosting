import 'package:flutter/material.dart';
import 'package:flutter_web_video_player/flutter_web_video_player.dart';

class WebPlayer extends StatefulWidget {
  final String link;

  const WebPlayer({Key key, @required this.link}) : super(key: key);

  @override
  _WebPlayerState createState() => _WebPlayerState();
}

class _WebPlayerState extends State<WebPlayer> with AutomaticKeepAliveClientMixin {
  get wantKeepAlive => true;
  
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
        child: AspectRatio(
            aspectRatio: 16 / 9, 
            child: WebVideoPlayer(
              src: widget.link,
              autoPlay: true,
              controls: false,
            )
        )
    );
  }
}
