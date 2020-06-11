import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';
import 'package:hosting/src/widget/web_feature_item.dart';

class WebFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (var context, var constraints){
        return isMedium(constraints) ? isSmall(constraints) ? WebFeaturesSmall() : WebFeaturesMobile() : WebFeaturesDesktop();
      },
    );
  }
}

class WebFeaturesDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: screen.setHeight(500.0),
      color: GREY,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WebFeatureItem(
                name: 'FREE\nTRIAL',
                description: 'Still not convinced? Try our service for free for eight hours, no credit card required. Not satisfied? Cancel with no charge!',
                asset: 'assets/images/ddos.png',
              ),

              WebFeatureItem(
                name: 'LOW \nLATENCY',
                description: 'Our twenty-six different data center locations around the globe allow for the lowest possible latency.',
                asset: 'assets/images/ethernet.png',
              ),

              WebFeatureItem(
                name: '24/7\nSUPPORT',
                description: 'Receive real 24/7 support from our knowledegable team. An answer will be delivered in less than 24 hours!',
                asset: 'assets/images/support.png',
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WebFeatureItem(
                name: 'CUSTOM\nPANEL',
                description: 'Manage your game server easily thanks to our custom game panel built exclusively for Hytale',
                asset: 'assets/images/ftp.png',
              ),

              WebFeatureItem(
                name: 'ENTERPRISE\nHARDWARE',
                description: 'We only use enterprise level hardware to ensure maximum performance. Plenty of players? No problem.',
                asset: 'assets/images/CPU.png',
              ),

              WebFeatureItem(
                name: 'INSTANT\nDELIVERY',
                description: 'No more waiting for long setups, your sever will be deployed instantly so you can start playing right away',
                asset: 'assets/images/unlimited.png',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class WebFeaturesMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: screen.setHeight(800.0),
      color: GREY,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WebFeatureItem(
                name: 'FREE\nTRIAL',
                description: 'Still not convinced? Try our service for free for eight hours, no credit card required! Not satisfied? Cancel with no charge!',
                asset: 'assets/images/ddos.png',
              ),

              WebFeatureItem(
                name: 'LOW \nLATENCY',
                description: 'Our twenty-six different data center locations around the globe allow for the lowest possible latency.',
                asset: 'assets/images/ethernet.png',
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WebFeatureItem(
                name: '24/7\nSUPPORT',
                description: 'Receive real 24/7 support from our knowledegable team. An answer will be delivered in less than 24 hours!',
                asset: 'assets/images/support.png',
              ),

              WebFeatureItem(
                name: 'CUSTOM\nPANEL',
                description: 'Manage your game server easily thanks to our custom game panel built exclusively for Hytale',
                asset: 'assets/images/ftp.png',
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WebFeatureItem(
                name: 'ENTERPRISE\nHARDWARE',
                description: 'We only use enterprise level hardware to ensure maximum performance. Plenty of players? No problem.',
                asset: 'assets/images/CPU.png',
              ),

              WebFeatureItem(
                name: 'INSTANT\nDELIVERY',
                description: 'No more waiting for long setups, your sever will be deployed instantly so you can start playing right away',
                asset: 'assets/images/unlimited.png',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class WebFeaturesSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: screen.setHeight(1500.0),
      color: GREY,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WebFeatureItem(
            name: 'FREE\nTRIAL',
            description: 'Still not convinced? Try our service for free for eight hours, no credit card required! Not satisfied? Cancel with no charge!',
            asset: 'assets/images/ddos.png',
          ),

          WebFeatureItem(
            name: 'LOW \nLATENCY',
            description: 'Our twenty-six different data center locations around the globe allow for the lowest possible latency.',
            asset: 'assets/images/ethernet.png',
          ),

          WebFeatureItem(
            name: '24/7\nSUPPORT',
            description: 'Receive real 24/7 support from our knowledegable team. An answer will be delivered in less than 24 hours!',
            asset: 'assets/images/support.png',
          ),

          WebFeatureItem(
            name: 'CUSTOM\nPANEL',
            description: 'Manage your game server easily thanks to our custom game panel built exclusively for Hytale',
            asset: 'assets/images/ftp.png',
          ),

          WebFeatureItem(
            name: 'ENTERPRISE\nHARDWARE',
            description: 'We only use enterprise level hardware to ensure maximum performance. Plenty of players? No problem.',
            asset: 'assets/images/CPU.png',
          ),

          WebFeatureItem(
            name: 'INSTANT\nDELIVERY',
            description: 'No more waiting for long setups, your sever will be deployed instantly so you can start playing right away',
            asset: 'assets/images/unlimited.png',
          ),
        ],
      ),
    );
  }
}

