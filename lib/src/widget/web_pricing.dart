import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hosting/src/constant/dimension.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';
import 'package:hosting/src/widget/web_pricing_item.dart';

class WebPricing extends StatefulWidget {
  @override
  _WebPricingState createState() => _WebPricingState();
}

class _WebPricingState extends State<WebPricing>
    with AutomaticKeepAliveClientMixin {
  get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LayoutBuilder(
      builder: (var context, var constraints) {
        return isMedium(constraints)
            ? isSmall(constraints) ? WebPricingSmall() : WebPricingMobile()
            : WebPricingDesktop();
      },
    );
  }
}

class WebPricingDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: setHeight(1000.0),
      color: BLUE_BACKGROUND,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
          ]),
        ],
      ),
    );
  }
}

class WebPricingMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: setHeight(1500.0),
      color: BLUE_BACKGROUND,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
          ]),
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
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
          ]),
        ],
      ),
    );
  }
}

class WebPricingSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: setHeight(2750.0),
      color: BLUE_BACKGROUND,
      child: Column(
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
        ],
      ),
    );
  }
}
