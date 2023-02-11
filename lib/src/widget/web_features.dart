import 'package:flutter/material.dart';
import 'package:hosting/src/util/screen.dart';
import 'package:hosting/src/widget/web_feature_item.dart';

class WebFeatures extends StatefulWidget {
  WebFeatures({Key? key}) : super(key: key);

  @override
  _WebFeaturesState createState() => _WebFeaturesState();
}

class _WebFeaturesState extends State<WebFeatures>
    with AutomaticKeepAliveClientMixin {
  final List<Widget> _normalBody = [
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

    SizedBox(
      height: 25.0,
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

    SizedBox(
      height: 25.0,
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

  final List<Widget> _extendedBody = [
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

    SizedBox(
      height: 25.0,
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
        ]
    )
  ];

  final _smallBody = [
    WebFeatureItem(
      name: 'FREE\nTRIAL',
      description:
      'Still not convinced? Try our service for free for eight hours, no credit card required! Not satisfied? Cancel with no charge!',
      asset: 'ddos.png',
    ),

    SizedBox(
      height: 25.0,
    ),

    WebFeatureItem(
      name: 'LOW \nLATENCY',
      description:
      'Our different data center locations around the globe allow for the lowest possible latency.',
      asset: 'ethernet.png',
    ),

    SizedBox(
      height: 25.0,
    ),

    WebFeatureItem(
      name: '24/7\nSUPPORT',
      description:
      'Receive real 24/7 support from our knowledegable team. An answer will be delivered in less than 24 hours!',
      asset: 'support.png',
    ),

    SizedBox(
      height: 25.0,
    ),

    WebFeatureItem(
      name: 'CUSTOM\nPANEL',
      description:
      'Manage your game server easily thanks to our custom game panel built exclusively for Hytale',
      asset: 'ftp.png',
    ),

    SizedBox(
      height: 25.0,
    ),

    WebFeatureItem(
      name: 'ENTERPRISE\nHARDWARE',
      description:
      'We only use enterprise level hardware to ensure maximum performance. Plenty of players? No problem.',
      asset: 'CPU.png',
    ),

    SizedBox(
      height: 25.0,
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
    super.build(context);
    return LayoutBuilder(
        builder: (var context, var constraints) {
          var screenType = getScreenType(constraints);
          return  Container(
              color: Theme.of(context).colorScheme.background,
              padding: EdgeInsets.only(
                top: 25.0,
                bottom: 25.0,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: screenType == ScreenType.DESKTOP ? _extendedBody
                      : screenType == ScreenType.MEDIUM ? _normalBody : _smallBody
              )
          );
        }
    );
  }

  @override
  bool get wantKeepAlive => true;
}