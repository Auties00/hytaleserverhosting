import 'package:flutter/material.dart';

class WebImage extends StatelessWidget {
  final String asset;
  final BoxFit fit;
  final bool animation;

  const WebImage(this.asset, {this.fit = BoxFit.cover, this.animation = true});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        "assets/images/$asset",
        fit: fit,
        frameBuilder: animation ? _createAnimation() : null
    );
  }

  ImageFrameBuilder _createAnimation() {
    return (context, child, frame, wasSynchronouslyLoaded) => AnimatedOpacity(
      opacity: frame == null ? 0 : 1,
      duration: const Duration(seconds: 1),
      curve: Curves.easeOut,
      child: child,
    );
  }
}