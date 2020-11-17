import 'package:asset_cache/asset_cache.dart';
import 'package:flutter/material.dart';
import 'package:hosting/src/page/home_page.dart';
import 'package:hosting/src/page/login_page.dart';
import 'package:hosting/src/page/purchase/purchase_pay.dart';
import 'package:hosting/src/page/purchase/purchase_select_plan.dart';
import 'package:hosting/src/page/purchase/purchase_select_server.dart';
import 'package:hosting/src/page/register_page.dart';
import 'package:platform_detect/platform_detect.dart';

typedef WidgetBuilder = Widget Function(BuildContext context);

void main() async{
  ByteDataAssets.instance.basePath = 'assets/images/';

  runApp(HytalesHostingApplication());

  if(browser.isFirefox) {
    await ByteDataAssets.instance.load('cc.png');
    await ByteDataAssets.instance.load('coal.png');
    await ByteDataAssets.instance.load('CPU.png');
    await ByteDataAssets.instance.load('credit.png');
    await ByteDataAssets.instance.load('ddos.png');
    await ByteDataAssets.instance.load('diamond.png');
    await ByteDataAssets.instance.load('emerald.png');
    await ByteDataAssets.instance.load('ethernet.png');
    await ByteDataAssets.instance.load('gold.png');
    await ByteDataAssets.instance.load('iron.png');
    await ByteDataAssets.instance.load('lapis.png');
    await ByteDataAssets.instance.load('location.jpg');
    await ByteDataAssets.instance.load('logo-full.png');
    await ByteDataAssets.instance.load('play.jpg');
    await ByteDataAssets.instance.load('pp.png');
    await ByteDataAssets.instance.load('price.jpg');
    await ByteDataAssets.instance.load('redstone.png');
    await ByteDataAssets.instance.load('stone.png');
    await ByteDataAssets.instance.load('support.png');
    await ByteDataAssets.instance.load('unlimited.png');
  }
}

class HytalesHostingApplication extends StatelessWidget {
  final Map<String, WidgetBuilder> _routes =  {
    '/':  (_) => HomePage(),
    '/login': (_) =>LoginPage(),
    '/register': (_) => RegisterPage(),
    '/purchase/location': (_) => PurchaseSelectServerPage(),
    '/purchase/plan': (_) => PurchaseSelectPlanPage(),
    '/purchase/pay': (_) => PurchasePayPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hytale Server Hosting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: _routes,
      initialRoute: '/',
    );
  }
}
