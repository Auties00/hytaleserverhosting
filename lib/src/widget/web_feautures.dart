import 'package:flutter/material.dart';
import 'package:hosting/src/constant/dimension.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';
import 'package:hosting/src/widget/web_feature_item.dart';

class WebFeatures extends StatefulWidget {
  WebFeatures({Key key}) : super(key: key);

  @override
  _WebFeaturesState createState() => _WebFeaturesState();
}

class _WebFeaturesState extends State<WebFeatures>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LayoutBuilder(
      builder: (var context, var constraints) {
        return isMedium(constraints)
            ? isSmall(constraints) ? WebFeaturesSmall() : WebFeaturesMobile()
            : WebFeaturesDesktop();
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class WebFeaturesDesktop extends StatelessWidget {
  final _widgets = [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        WebFeatureItem(
          name: 'FREE\nTRIAL',
          description:
          'Still not convinced? Try our service for free for eight hours, no credit card required. Not satisfied? Cancel with no charge!',
          asset: 'ddos.png',
        ),
        WebFeatureItem(
          name: 'LOW \nLATENCY',
          description:
          'Our different data center locations around the globe allow for the lowest possible latency.',
          asset: 'ethernet.png',
        ),
        WebFeatureItem(
          name: '24/7\nSUPPORT',
          description:
          'Receive real 24/7 support from our knowledegable team. An answer will be delivered in less than 24 hours!',
          asset: 'support.png',
        ),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        WebFeatureItem(
          name: 'CUSTOM\nPANEL',
          description:
          'Manage your game server easily thanks to our custom game panel built exclusively for Hytale',
          asset: 'ftp.png',
        ),
        WebFeatureItem(
          name: 'ENTERPRISE\nHARDWARE',
          description:
          'We only use enterprise level hardware to ensure maximum performance. Plenty of players? No problem.',
          asset: 'CPU.png',
        ),
        WebFeatureItem(
          name: 'INSTANT\nDELIVERY',
          description:
          'No more waiting for long setups, your sever will be deployed instantly so you can start playing right away',
          asset: 'unlimited.png',
        ),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: setHeight(500.0),
      color: BLUE_BACKGROUND,
      child: Wrap(
        children: [
          ListView.separated(
            itemBuilder: (context, index) => _widgets[index],
            separatorBuilder: (context, index) => SizedBox(height: setHeight(50.0)),
            itemCount: _widgets.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}

class WebFeaturesMobile extends StatelessWidget {
  final _widgets = [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        WebFeatureItem(
          name: 'FREE\nTRIAL',
          description:
          'Still not convinced? Try our service for free for eight hours, no credit card required! Not satisfied? Cancel with no charge!',
          asset: 'ddos.png',
        ),
        WebFeatureItem(
          name: 'LOW \nLATENCY',
          description:
          'Our different data center locations around the globe allow for the lowest possible latency.',
          asset: 'ethernet.png',
        ),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        WebFeatureItem(
          name: '24/7\nSUPPORT',
          description:
          'Receive real 24/7 support from our knowledegable team. An answer will be delivered in less than 24 hours!',
          asset: 'support.png',
        ),
        WebFeatureItem(
          name: 'CUSTOM\nPANEL',
          description:
          'Manage your game server easily thanks to our custom game panel built exclusively for Hytale',
          asset: 'ftp.png',
        ),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        WebFeatureItem(
          name: 'ENTERPRISE\nHARDWARE',
          description:
          'We only use enterprise level hardware to ensure maximum performance. Plenty of players? No problem.',
          asset: 'CPU.png',
        ),
        WebFeatureItem(
          name: 'INSTANT\nDELIVERY',
          description:
          'No more waiting for long setups, your sever will be deployed instantly so you can start playing right away',
          asset: 'unlimited.png',
        ),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: setHeight(800.0),
      color: BLUE_BACKGROUND,
      child: Wrap(
        children: [
          ListView.separated(
            itemBuilder: (context, index) => _widgets[index],
            separatorBuilder: (context, index) => SizedBox(height: setHeight(50.0)),
            itemCount: _widgets.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}

class WebFeaturesSmall extends StatelessWidget {
  final _widgets = [
    WebFeatureItem(
      name: 'FREE\nTRIAL',
      description:
      'Still not convinced? Try our service for free for eight hours, no credit card required! Not satisfied? Cancel with no charge!',
      asset: 'ddos.png',
    ),
    WebFeatureItem(
      name: 'LOW \nLATENCY',
      description:
      'Our different data center locations around the globe allow for the lowest possible latency.',
      asset: 'ethernet.png',
    ),
    WebFeatureItem(
      name: '24/7\nSUPPORT',
      description:
      'Receive real 24/7 support from our knowledegable team. An answer will be delivered in less than 24 hours!',
      asset: 'support.png',
    ),
    WebFeatureItem(
      name: 'CUSTOM\nPANEL',
      description:
      'Manage your game server easily thanks to our custom game panel built exclusively for Hytale',
      asset: 'ftp.png',
    ),
    WebFeatureItem(
      name: 'ENTERPRISE\nHARDWARE',
      description:
      'We only use enterprise level hardware to ensure maximum performance. Plenty of players? No problem.',
      asset: 'CPU.png',
    ),
    WebFeatureItem(
      name: 'INSTANT\nDELIVERY',
      description:
      'No more waiting for long setups, your sever will be deployed instantly so you can start playing right away',
      asset: 'unlimited.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        height: setHeight(1250.0),
        color: BLUE_BACKGROUND,
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: _widgets.length,
              separatorBuilder: (context, index) => SizedBox(height: setHeight(70.0)),
              itemBuilder: (context, index) => _widgets[index]
          ),
        )
    );
  }
}
