import 'package:flutter/material.dart';

class WebAssetLogo extends StatelessWidget {
  final String asset;
  const WebAssetLogo({@required this.asset});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      asset,
      fit: BoxFit.cover,
    );
  }
}
