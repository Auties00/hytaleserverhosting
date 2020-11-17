import 'package:asset_cache/asset_cache.dart';
import 'package:flutter/material.dart';

class WebImage extends StatelessWidget {
  final String asset;
  final BoxFit fit;
  final bool animation;

  const WebImage(this.asset, {this.fit = BoxFit.cover, this.animation = true});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ByteDataAssets.instance.load(asset),
        builder: (var context, var snapshot) {
          if(!snapshot.hasData){
            return SizedBox();
          }

          return Image.memory(
              snapshot.data.buffer.asUint8List(),
              fit: fit,
              frameBuilder: !animation ? null : (context, child, frame, wasSynchronouslyLoaded) {
                return wasSynchronouslyLoaded ? child : AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: frame != null ? child : SizedBox(),
                );
              }
          );
        }
    );
  }
}