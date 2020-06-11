import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';
import 'package:hosting/src/widget/web_pricing_item.dart';

class WebPricing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (var context, var constraints){
        return isMedium(constraints) ? isSmall(constraints) ? WebPricingSmall() : WebPricingMobile() : WebPricingDesktop();
      },
    );
  }
}

class WebPricingDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: screen.setHeight(1000.0),
      color:  BLUE_BACKGROUND,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WebPricingItem(
                    title: 'STONE',
                    price: '€7.99',
                    players: '12 Players',
                    space: '25',
                    ram: '1024',
                    big: true
                ),

                WebPricingItem(
                    title: 'COAL',
                    price: '€14.99',
                    players: '24 Players',
                    space: '50GB',
                    ram: '2048',
                    big: true
                ),

                WebPricingItem(
                    title: 'GOLD',
                    price: '€19.99',
                    players: '48 Players',
                    space: '50GB',
                    ram: '4096',
                    big: true
                ),
              ]
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WebPricingItem(
                    title: 'REDSTONE',
                    price: '€29.99',
                    players: '72 Players',
                    space: '80GB',
                    ram: '6144',
                    big: true
                ),


                WebPricingItem(
                    title: 'DIAMOND',
                    price: '€39.99',
                    players: '96 Players',
                    space: '100GB',
                    ram: '8192',
                    big: true
                ),

                WebPricingItem(
                    title: 'EMERALD',
                    price: '€49.99',
                    players: '144 Players',
                    space: '150GB',
                    ram: '12288',
                    big: true
                ),
              ]
          ),
        ],
      ),
    );
  }
}

class WebPricingMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: screen.setHeight(1500.0),
      color:  BLUE_BACKGROUND,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WebPricingItem(
                    title: 'STONE',
                    price: '€7.99',
                    players: '12 Players',
                    space: '25',
                    ram: '1024',
                    big: true
                ),

                WebPricingItem(
                    title: 'COAL',
                    price: '€14.99',
                    players: '24 Players',
                    space: '50GB',
                    ram: '2048',
                    big: true
                ),
              ]
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WebPricingItem(
                  title: 'GOLD',
                  price: '€19.99',
                  players: '48 Players',
                  space: '50GB',
                  ram: '4096',
                  big: true
              ),

              WebPricingItem(
                  title: 'REDSTONE',
                  price: '€29.99',
                  players: '72 Players',
                  space: '80GB',
                  ram: '6144',
                  big: true
              ),
            ],
          ),


          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WebPricingItem(
                    title: 'DIAMOND',
                    price: '€39.99',
                    players: '96 Players',
                    space: '100GB',
                    ram: '8192',
                    big: true
                ),

                WebPricingItem(
                    title: 'EMERALD',
                    price: '€49.99',
                    players: '144 Players',
                    space: '150GB',
                    ram: '12288',
                    big: true
                ),
              ]
          ),
        ],
      ),
    );
  }
}

class WebPricingSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      height: screen.setHeight(2750.0),
      color:  BLUE_BACKGROUND,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WebPricingItem(
              title: 'STONE',
              price: '€7.99',
              players: '12 Players',
              space: '25',
              ram: '1024',
              big: true
          ),

          WebPricingItem(
              title: 'COAL',
              price: '€14.99',
              players: '24 Players',
              space: '50GB',
              ram: '2048',
              big: true
          ),

          WebPricingItem(
              title: 'GOLD',
              price: '€19.99',
              players: '48 Players',
              space: '50GB',
              ram: '4096',
              big: true
          ),

          WebPricingItem(
              title: 'REDSTONE',
              price: '€29.99',
              players: '72 Players',
              space: '80GB',
              ram: '6144',
              big: true
          ),

          WebPricingItem(
              title: 'DIAMOND',
              price: '€39.99',
              players: '96 Players',
              space: '100GB',
              ram: '8192',
              big: true
          ),

          WebPricingItem(
              title: 'EMERALD',
              price: '€49.99',
              players: '144 Players',
              space: '150GB',
              ram: '12288',
              big: true
          ),
        ],
      ),
    );
  }
}

