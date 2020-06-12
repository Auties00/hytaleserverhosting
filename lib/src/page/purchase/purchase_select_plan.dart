import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/util/screen_util.dart';
import 'package:hosting/src/widget/web_footer.dart';
import 'package:hosting/src/widget/web_navigation_bar.dart';
import 'package:hosting/src/widget/web_pricing_item.dart';

class PurchaseSelectPlanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (var context, var constraints) {
        return isDesktopHeight(constraints) ? PurchaseSelectPlanPageDesktop() : PurchaseSelectPlanPageMobile();
      },
    );
  }
}

class PurchaseSelectPlanPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = ScreenUtil();
    return Scaffold(
        body: Container(
            color: BLUE_BACKGROUND,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WebNavigationBar(
                    showItems: false
                ),

                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'SELECT A PLAN',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.barlow(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0
                          )
                      ),

                      SizedBox(
                        height: screen.setHeight(10.0),
                      ),

                      Text(
                          'Remember to select the plan that best fits your needs!',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.barlow(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0
                          )
                      ),
                    ]
                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WebPricingItem(
                        title: 'STONE',
                        price: '€7.99',
                        players: '12 Players',
                        space: '25',
                        ram: '1024',
                        big: true,
                        onTap: () => Navigator.of(context).pushNamed('/purchase/pay'),
                      ),

                      WebPricingItem(
                        title: 'COAL',
                        price: '€14.99',
                        players: '24 Players',
                        space: '50GB',
                        ram: '2048',
                        big: true,
                        onTap: () => Navigator.of(context).pushNamed('/purchase/pay'),
                      ),

                      WebPricingItem(
                        title: 'GOLD',
                        price: '€19.99',
                        players: '48 Players',
                        space: '50GB',
                        ram: '4096',
                        big: true,
                        onTap: () => Navigator.of(context).pushNamed('/purchase/pay'),
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
                        big: true,
                        onTap: () => Navigator.of(context).pushNamed('/purchase/pay'),
                      ),


                      WebPricingItem(
                        title: 'DIAMOND',
                        price: '€39.99',
                        players: '96 Players',
                        space: '100GB',
                        ram: '8192',
                        big: true,
                        onTap: () => Navigator.of(context).pushNamed('/purchase/pay'),
                      ),

                      WebPricingItem(
                        title: 'EMERALD',
                        price: '€49.99',
                        players: '144 Players',
                        space: '150GB',
                        ram: '12288',
                        big: true,
                        onTap: () => Navigator.of(context).pushNamed('/purchase/pay'),
                      ),
                    ]
                ),


                WebFooter()
              ],
            )
        )
    );
  }
}

class PurchaseSelectPlanPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenUtil screen = ScreenUtil();
    return Scaffold(
        backgroundColor:  BLUE_BACKGROUND,
        body: ListView(
          shrinkWrap: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WebNavigationBar(
                    showItems: false
                ),

                SizedBox(
                  height: screen.setHeight(50.0),
                ),

                Text(
                    'SELECT A PLAN',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.barlow(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0
                    )
                ),

                SizedBox(
                  height: screen.setHeight(10.0),
                ),

                Text(
                    'Remember to select the plan that best fits your needs!',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.barlow(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0
                    )
                ),

                SizedBox(
                  height: screen.setHeight(50.0),
                ),

                WebPricingItem(
                  title: 'STONE',
                  price: '€7.99',
                  players: '12 Players',
                  space: '25',
                  ram: '1024',
                  big: true,
                  onTap: () => Navigator.of(context).pushNamed('/purchase/pay'),
                ),

                SizedBox(
                  height: screen.setHeight(25.0),
                ),

                WebPricingItem(
                  title: 'COAL',
                  price: '€14.99',
                  players: '24 Players',
                  space: '50GB',
                  ram: '2048',
                  big: true,
                  onTap: () => Navigator.of(context).pushNamed('/purchase/pay'),
                ),

                SizedBox(
                  height: screen.setHeight(25.0),
                ),

                WebPricingItem(
                  title: 'GOLD',
                  price: '€19.99',
                  players: '48 Players',
                  space: '50GB',
                  ram: '4096',
                  big: true,
                  onTap: () => Navigator.of(context).pushNamed('/purchase/pay'),
                ),

                SizedBox(
                  height: screen.setHeight(25.0),
                ),

                WebPricingItem(
                  title: 'REDSTONE',
                  price: '€29.99',
                  players: '72 Players',
                  space: '80GB',
                  ram: '6144',
                  big: true,
                  onTap: () => Navigator.of(context).pushNamed('/purchase/pay'),
                ),

                SizedBox(
                  height: screen.setHeight(25.0),
                ),

                WebPricingItem(
                  title: 'DIAMOND',
                  price: '€39.99',
                  players: '96 Players',
                  space: '100GB',
                  ram: '8192',
                  big: true,
                  onTap: () => Navigator.of(context).pushNamed('/purchase/pay'),
                ),

                SizedBox(
                  height: screen.setHeight(25.0),
                ),

                WebPricingItem(
                  title: 'EMERALD',
                  price: '€49.99',
                  players: '144 Players',
                  space: '150GB',
                  ram: '12288',
                  big: true,
                  onTap: () => Navigator.of(context).pushNamed('/purchase/pay'),
                ),

                SizedBox(
                  height: screen.setHeight(50.0),
                ),

                WebFooter()
              ],
            )
          ],
        )
    );
  }
}