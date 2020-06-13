import 'package:asset_cache/asset_cache.dart';
import 'package:flutter/material.dart';

class WebImage extends StatelessWidget {
  final String asset;
  final BoxFit fit;

  const WebImage(this.asset, {this.fit = BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ByteDataAssets.instance.load(asset),
        builder: (var context, var snapshot) {
          return snapshot.hasData
              ? fit == null
                  ? Image.memory(snapshot.data.buffer.asUint8List())
                  : Image.memory(snapshot.data.buffer.asUint8List(), fit: fit)
              : SizedBox();
        });
  }
}
