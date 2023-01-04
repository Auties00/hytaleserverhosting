import 'package:flutter/material.dart';
import 'package:hosting/src/util/dimension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/util/screen.dart';
import 'package:hosting/src/widget/web_footer.dart';
import 'package:hosting/src/widget/web_location_item.dart';
import 'package:hosting/src/widget/web_navigation_bar.dart';

class PurchaseSelectServerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (var context, var constraints) {
      return isMedium(constraints) ? isSmall(constraints) ? PurchaseSelectServerPageSmall() : PurchaseSelectServerPageMobile() : PurchaseSelectServerPageDesktop();
    });
  }
}

class PurchaseSelectServerPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Theme.of(context).colorScheme.background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WebNavigationBar(showItems: false),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('SELECT A SERVER',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.barlow(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32.0)),
                  SizedBox(
                    height: setHeight(10.0),
                  ),
                  Text('Remember to choose the closest server to you!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.barlow(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0)),
                  SizedBox(
                    height: setHeight(30.0),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WebLocationItem(
                        name: 'North America',
                        orientation: Axis.horizontal,
                        onTap: () =>
                            Navigator.pushNamed(context, '/purchase/plan'),
                      ),
                      WebLocationItem(
                        name: 'Netherlands',
                        orientation: Axis.horizontal,
                        onTap: () =>
                            Navigator.pushNamed(context, '/purchase/plan'),
                      ),
                      WebLocationItem(
                        name: 'Germany',
                        orientation: Axis.horizontal,
                        onTap: () =>
                            Navigator.pushNamed(context, '/purchase/plan'),
                      ),
                      WebLocationItem(
                        name: 'France',
                        orientation: Axis.horizontal,
                        onTap: () =>
                            Navigator.pushNamed(context, '/purchase/plan'),
                      ),
                      WebLocationItem(
                        name: 'United Kindom',
                        orientation: Axis.horizontal,
                        onTap: () =>
                            Navigator.pushNamed(context, '/purchase/plan'),
                      ),
                      WebLocationItem(
                        name: 'Sweden',
                        orientation: Axis.horizontal,
                        onTap: () =>
                            Navigator.pushNamed(context, '/purchase/plan'),
                      ),
                    ],
                  ),
                ],
              ),
              WebFooter()
            ],
          )
      ),
    );
  }
}

class PurchaseSelectServerPageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Theme.of(context).colorScheme.background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WebNavigationBar(showItems: false),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('SELECT A SERVER',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.barlow(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32.0)),

                  SizedBox(
                    height: setHeight(10.0),
                  ),

                  Text('Remember to choose the closest server to you!',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.barlow(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0)),
                  SizedBox(
                    height: setHeight(30.0),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WebLocationItem(
                        name: 'North America',
                        onTap: () =>
                            Navigator.pushNamed(context, '/purchase/plan'),
                      ),
                      WebLocationItem(
                        name: 'Netherlands',
                        onTap: () =>
                            Navigator.pushNamed(context, '/purchase/plan'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WebLocationItem(
                        name: 'Germany',
                        onTap: () =>
                            Navigator.pushNamed(context, '/purchase/plan'),
                      ),
                      WebLocationItem(
                        name: 'France',
                        onTap: () =>
                            Navigator.pushNamed(context, '/purchase/plan'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WebLocationItem(
                        name: 'United Kindom',
                        onTap: () =>
                            Navigator.pushNamed(context, '/purchase/plan'),
                      ),
                      WebLocationItem(
                        name: 'Sweden',
                        onTap: () =>
                            Navigator.pushNamed(context, '/purchase/plan'),
                      ),
                    ],
                  )
                ],
              ),

              WebFooter()
            ],
          )
      ),
    );
  }
}

class PurchaseSelectServerPageSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Theme.of(context).colorScheme.background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WebNavigationBar(showItems: false),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                        children: [
                          Text('SELECT A SERVER',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.barlow(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32.0)),

                          SizedBox(
                            height: setHeight(10.0),
                          ),

                          Text('Remember to choose the closest server to you!',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.barlow(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0)),
                        ]
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            WebLocationItem(
                              name: 'North America',
                              onTap: () =>
                                  Navigator.pushNamed(context, '/purchase/plan'),
                            ),
                            WebLocationItem(
                              name: 'Netherlands',
                              onTap: () =>
                                  Navigator.pushNamed(context, '/purchase/plan'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            WebLocationItem(
                              name: 'Germany',
                              onTap: () =>
                                  Navigator.pushNamed(context, '/purchase/plan'),
                            ),
                            WebLocationItem(
                              name: 'France',
                              onTap: () =>
                                  Navigator.pushNamed(context, '/purchase/plan'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            WebLocationItem(
                              name: 'United Kindom',
                              onTap: () =>
                                  Navigator.pushNamed(context, '/purchase/plan'),
                            ),
                            WebLocationItem(
                              name: 'Sweden',
                              onTap: () => Navigator.pushNamed(context, '/purchase/plan'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}

