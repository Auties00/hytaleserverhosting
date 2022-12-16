
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hosting/src/util/dimension.dart';
import 'package:hosting/src/util/color.dart';
import 'package:hosting/src/util/screen.dart';
import 'package:hosting/src/widget/web_pricing_item.dart';

class WebPricing extends StatefulWidget {
  WebPricing({Key key}) : super(key: key);

  @override
  _WebPricingState createState() => _WebPricingState();
}

class _WebPricingState extends State<WebPricing> with AutomaticKeepAliveClientMixin {
  final _extendedBody = [
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WebPricingItem(
            title: 'STONE',
            price: '€7.99',
            players: '12',
            space: '25',
            ram: '1024',
          ),
          WebPricingItem(
            title: 'COAL',
            price: '€14.99',
            players: '24',
            space: '50',
            ram: '2048',
          ),
          WebPricingItem(
            title: 'GOLD',
            price: '€19.99',
            players: '48',
            space: '50',
            ram: '4096',
          ),
        ]
    ),

    SizedBox(
      height: setHeight(50.0),
    ),

    Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WebPricingItem(
            title: 'REDSTONE',
            price: '€29.99',
            players: '72',
            space: '80',
            ram: '6144',
          ),
          WebPricingItem(
            title: 'DIAMOND',
            price: '€39.99',
            players: '96',
            space: '100',
            ram: '8192',
          ),
          WebPricingItem(
            title: 'EMERALD',
            price: '€49.99',
            players: '144',
            space: '150',
            ram: '12288',
          ),
        ]
    )
  ];

  final _normalBody = [
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WebPricingItem(
            title: 'STONE',
            price: '€7.99',
            players: '12',
            space: '25',
            ram: '1024',
          ),
          WebPricingItem(
            title: 'COAL',
            price: '€14.99',
            players: '24',
            space: '50',
            ram: '2048',
          ),
        ]
    ),

    SizedBox(
      height: setHeight(50.0),
    ),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        WebPricingItem(
          title: 'GOLD',
          price: '€19.99',
          players: '48',
          space: '50',
          ram: '4096',
        ),
        WebPricingItem(
          title: 'REDSTONE',
          price: '€29.99',
          players: '72',
          space: '80',
          ram: '6144',
        ),
      ],
    ),

    SizedBox(
      height: setHeight(50.0),
    ),

    Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WebPricingItem(
            title: 'DIAMOND',
            price: '€39.99',
            players: '96',
            space: '100',
            ram: '8192',
          ),
          WebPricingItem(
            title: 'EMERALD',
            price: '€49.99',
            players: '144',
            space: '150',
            ram: '12288',
          ),
        ]
    )
  ];

  final _smallBody = [
    WebPricingItem(
      title: 'STONE',
      price: '€7.99',
      players: '12',
      space: '25',
      ram: '1024',
    ),

    SizedBox(
      height: setHeight(50.0),
    ),

    WebPricingItem(
      title: 'COAL',
      price: '€14.99',
      players: '24',
      space: '50',
      ram: '2048',
    ),

    SizedBox(
      height: setHeight(50.0),
    ),

    WebPricingItem(
      title: 'GOLD',
      price: '€19.99',
      players: '48',
      space: '50',
      ram: '4096',
    ),

    SizedBox(
      height: setHeight(50.0),
    ),

    WebPricingItem(
      title: 'REDSTONE',
      price: '€29.99',
      players: '72',
      space: '80',
      ram: '6144',
    ),

    SizedBox(
      height: setHeight(50.0),
    ),

    WebPricingItem(
      title: 'DIAMOND',
      price: '€39.99',
      players: '96',
      space: '100',
      ram: '8192',
    ),

    SizedBox(
      height: setHeight(50.0),
    ),

    WebPricingItem(
      title: 'EMERALD',
      price: '€49.99',
      players: '144',
      space: '150',
      ram: '12288',
    )
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LayoutBuilder(
        builder: (var context, var constraints) {
          var screenType = getScreenType(constraints);
          return  Container(
              color: BLUE_BACKGROUND,
              child: Padding(
                padding: EdgeInsets.only(
                  top: setHeight(25.0),
                  bottom: setHeight(25.0),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: screenType == ScreenType.DESKTOP ? _extendedBody
                        : screenType == ScreenType.MEDIUM ? _normalBody : _smallBody
                ),
              )
          );
        }
    );
  }

  get wantKeepAlive => true;
}