import 'package:flutter/material.dart';
import 'package:hosting/src/util/dimension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/util/color.dart';
import 'package:hosting/src/util/screen.dart';
import 'package:hosting/src/widget/web_point.dart';

class WebIntroduction extends StatefulWidget {
  WebIntroduction({Key key}) : super(key: key);

  @override
  _WebIntroductionState createState() => _WebIntroductionState();
}

class _WebIntroductionState extends State<WebIntroduction> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LayoutBuilder(builder: (var context, var constraints) {
      return isMedium(constraints)
          ? WebIntroductionMobile()
          : WebIntroductionDesktop();
    });
  }

  @override
  bool get wantKeepAlive => true;
}

class WebIntroductionDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BLUE_BACKGROUND,
      child: Padding(
          padding: EdgeInsets.only(
            top: setHeight(25.0),
            bottom: setHeight(25.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebPoint(
                    name: 'CHOOSE A SERVER',
                    description: ' Seven servers around the globe',
                    asset: 'location.jpg',
                    index: 1,
                  ),
                  WebPoint(
                    name: 'SELECT A PLAN',
                    description: 'Starting at €7.99 per month',
                    asset: 'price.jpg',
                    index: 2,
                  ),
                  WebPoint(
                    name: 'START PLAYING',
                    description: 'Your rules, your friends, your game',
                    asset: 'play.jpg',
                    index: 3,
                  ),
                ],
              ),

              SizedBox(
                height: setHeight(50.0),
              ),

              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/purchase/location'),
                child: Text('CREATE YOUR SERVER',
                    style: GoogleFonts.barlow(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ],
          )
      ),
    );
  }
}

class WebIntroductionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: BLUE_BACKGROUND,
        child: Padding(
            padding: EdgeInsets.only(
              top: setHeight(25.0),
              bottom: setHeight(25.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                WebPoint(
                  name: 'CHOOSE A SERVER',
                  description: ' Seven servers around the globe',
                  asset: 'location.jpg',
                  index: 1,
                ),

                SizedBox(
                  height: setHeight(50.0),
                ),

                WebPoint(
                  name: 'SELECT A PLAN',
                  description: 'Starting at €7.99 per month',
                  asset: 'price.jpg',
                  index: 2,
                ),

                SizedBox(
                  height: setHeight(50.0),
                ),

                WebPoint(
                  name: 'START PLAYING',
                  description: 'Your rules, your friends, your game',
                  asset: 'play.jpg',
                  index: 3,
                ),

                SizedBox(
                  height: setHeight(50.0),
                ),

                OutlinedButton(
                  onPressed: () => Navigator.pushNamed(context, '/purchase/location'),
                  child: Text('CREATE YOUR SERVER',
                      style: GoogleFonts.barlow(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                )
              ],
            )
        )
    );
  }
}
