import 'package:flutter/material.dart';
import 'package:hosting/src/widget/web_announcement.dart';
import 'package:hosting/src/widget/web_divider.dart';
import 'package:hosting/src/widget/web_features.dart';
import 'package:hosting/src/widget/web_footer.dart';
import 'package:hosting/src/widget/web_introduction.dart';
import 'package:hosting/src/widget/web_navigation_bar.dart';
import 'package:hosting/src/widget/web_pricing.dart';
import 'package:scale/scale.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<GlobalKey> _keys = [];

  @override
  Widget build(BuildContext context) {
    _keys.clear();
    Scale.setup(context, MediaQuery.of(context).size);

    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (e) {
            e.disallowIndicator();
            return false;
          },

          child: ListView(
              primary: true,
              children: [
                WebNavigationBar(
                    key: GlobalKey()..addKeyToList(_keys),
                    keys: _keys
                ),

                WebAnnouncement(
                  key: GlobalKey()..addKeyToList(_keys),
                ),

                WebDivider(),

                WebIntroduction(
                  key: GlobalKey()..addKeyToList(_keys),
                ),

                WebDivider(),

                WebFeatures(
                  key: GlobalKey()..addKeyToList(_keys),
                ),

                WebDivider(),

                WebPricing(
                  key: GlobalKey()..addKeyToList(_keys),
                ),

                WebFooter(
                  key: GlobalKey()..addKeyToList(_keys),
                )
              ]
          )
      ),
    );
  }
}

extension _GlobalKeyExtension on GlobalKey {
  void addKeyToList(List<GlobalKey> keys){
    keys.add(this);
  }
}