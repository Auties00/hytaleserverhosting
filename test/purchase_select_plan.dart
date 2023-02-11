import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/util/screen.dart';
import 'package:hosting/src/widget/native_scroll.dart';
import 'package:hosting/src/widget/web_footer.dart';
import 'package:hosting/src/widget/web_navigation_bar.dart';
import 'package:hosting/src/widget/web_pricing_item.dart';

class PurchaseSelectPlanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (var context, var constraints) {
        return isDesktopHeight(constraints)
            ? PurchaseSelectPlanPageDesktop()
            : PurchaseSelectPlanPageMobile();
      },
    );
  }
}

class PurchaseSelectPlanPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Theme.of(context).colorScheme.background,
          child: HtmlScrollView(
          children: [
                WebNavigationBar(showItems: false),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('SELECT A PLAN',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.barlow(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32.0)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                          'Remember to select the plan that best fits your needs!',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.barlow(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0)),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WebPricingItem(
                        title: 'STONE',
                        price: '€7.99',
                        players: '12',
                        space: '25',
                        ram: '1024',
                        onTap: () => Navigator.pushNamed(context, '/purchase/pay'),
                      ),
                      WebPricingItem(
                        title: 'COAL',
                        price: '€14.99',
                        players: '24',
                        space: '50',
                        ram: '2048',

                        onTap: () =>
                            Navigator.pushNamed(context, '/purchase/pay'),
                      ),
                      WebPricingItem(
                        title: 'GOLD',
                        price: '€19.99',
                        players: '48',
                        space: '50',
                        ram: '4096',
                        onTap: () => Navigator.pushNamed(context, '/purchase/pay'),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WebPricingItem(
                        title: 'REDSTONE',
                        price: '€29.99',
                        players: '72',
                        space: '80',
                        ram: '6144',
                        onTap: () => Navigator.pushNamed(context, '/purchase/pay'),
                      ),
                      WebPricingItem(
                        title: 'DIAMOND',
                        price: '€39.99',
                        players: '96',
                        space: '100',
                        ram: '8192',
                        onTap: () => Navigator.pushNamed(context, '/purchase/pay'),
                      ),
                      WebPricingItem(
                        title: 'EMERALD',
                        price: '€49.99',
                        players: '144',
                        space: '150',
                        ram: '12288',
                        onTap: () => Navigator.pushNamed(context, '/purchase/pay'),
                      ),
                    ]),
                WebFooter()
              ],
          )
      ),
    );
  }
}

class PurchaseSelectPlanPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Theme.of(context).colorScheme.background,
          child: HtmlScrollView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebNavigationBar(
                      showItems: false
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text('SELECT A PLAN',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.barlow(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32.0)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Remember to select the plan that best fits your needs!',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.barlow(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0)),
                  SizedBox(
                    height: 50.0,
                  ),
                  WebPricingItem(
                    title: 'STONE',
                    price: '€7.99',
                    players: '12',
                    space: '25',
                    ram: '1024',
                    onTap: () => Navigator.pushNamed(context, '/purchase/pay'),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  WebPricingItem(
                    title: 'COAL',
                    price: '€14.99',
                    players: '24',
                    space: '50',
                    ram: '2048',
                    onTap: () => Navigator.pushNamed(context, '/purchase/pay'),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  WebPricingItem(
                    title: 'GOLD',
                    price: '€19.99',
                    players: '48',
                    space: '50',
                    ram: '4096',

                    onTap: () => Navigator.pushNamed(context, '/purchase/pay'),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  WebPricingItem(
                    title: 'REDSTONE',
                    price: '€29.99',
                    players: '72',
                    space: '80',
                    ram: '6144',

                    onTap: () => Navigator.pushNamed(context, '/purchase/pay'),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  WebPricingItem(
                    title: 'DIAMOND',
                    price: '€39.99',
                    players: '96',
                    space: '100',
                    ram: '8192',

                    onTap: () => Navigator.pushNamed(context, '/purchase/pay'),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  WebPricingItem(
                    title: 'EMERALD',
                    price: '€49.99',
                    players: '144',
                    space: '150',
                    ram: '12288',
                    onTap: () => Navigator.pushNamed(context, '/purchase/pay'),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}
