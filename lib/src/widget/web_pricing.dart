
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hosting/src/util/screen.dart';
import 'package:hosting/src/widget/web_pricing_item.dart';

class WebPricing extends StatefulWidget {
  WebPricing({Key? key}) : super(key: key);

  @override
  _WebPricingState createState() => _WebPricingState();
}

class _WebPricingState extends State<WebPricing> with AutomaticKeepAliveClientMixin {
  static final List<Widget> _extendedBody = [
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _stonePricing,
          _coalPricing,
          _goldPricing,
        ]
    ),

    _divider,

    Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _redStonePricing,
          _diamondPricing,
          _emeraldPricing
        ]
    )
  ];

  static final List<Widget> _normalBody = [
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _stonePricing,
          _coalPricing,
        ]
    ),

    _divider,

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _goldPricing,
        _redStonePricing,
      ],
    ),

    _divider,

    Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _diamondPricing,
          _emeraldPricing,
        ]
    )
  ];

  static final List<Widget> _smallBody = [
    _stonePricing,

    _divider,

    _coalPricing,

    _divider,

    _goldPricing,

    _divider,

    _redStonePricing,

    _divider,

    _diamondPricing,

    _divider,

    _emeraldPricing
  ];

  static WebPricingItem get _stonePricing => WebPricingItem(
    title: 'STONE',
    price: '€7.99',
    players: '12',
    space: '25',
    ram: '1024',
  );

  static WebPricingItem get _coalPricing => WebPricingItem(
    title: 'COAL',
    price: '€14.99',
    players: '24',
    space: '50',
    ram: '2048',
  );

  static WebPricingItem get _goldPricing => WebPricingItem(
    title: 'GOLD',
    price: '€19.99',
    players: '48',
    space: '50',
    ram: '4096',
  );

  static WebPricingItem get _redStonePricing => WebPricingItem(
    title: 'REDSTONE',
    price: '€29.99',
    players: '72',
    space: '80',
    ram: '6144',
  );

  static WebPricingItem get _diamondPricing => WebPricingItem(
    title: 'DIAMOND',
    price: '€39.99',
    players: '96',
    space: '100',
    ram: '8192',
  );

  static SizedBox get _divider => SizedBox(
    height: 25.0,
  );

  static WebPricingItem get _emeraldPricing => WebPricingItem(
    title: 'EMERALD',
    price: '€49.99',
    players: '144',
    space: '150',
    ram: '12288',
  );

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

  get wantKeepAlive => true;
}