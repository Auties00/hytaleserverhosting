import 'package:asset_cache/asset_cache.dart';
import 'package:flutter/material.dart';
import 'package:hosting/src/page/home_page.dart';
import 'package:hosting/src/page/login_page.dart';
import 'package:hosting/src/page/purchase/purchase_pay.dart';
import 'package:hosting/src/page/purchase/purchase_select_plan.dart';
import 'package:hosting/src/page/purchase/purchase_select_server.dart';
import 'package:hosting/src/page/register_page.dart';

void main() {
  ByteDataAssets.instance.basePath = 'assets/images/';
  runApp(HytalesHostingApplication());
}

class HytalesHostingApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hytales Hosting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      routes: {
        '/' : (_) => HomePage(),
        '/login' : (_) => LoginPage(),
        '/register' : (_) => RegisterPage(),
        '/purchase/location' : (_) => PurchaseSelectServerPage(),
        '/purchase/plan' : (_) => PurchaseSelectPlanPage(),
        '/purchase/pay' : (_) => PurchasePayPage(),
      },

      initialRoute: '/',
    );
  }
}






//TODO: Remove or use
/*

/*
  var cc = await ByteDataAssets.instance.load('cc.png');
  cache.putIfAbsent('cc.png', () => cc);

  var coal = await ByteDataAssets.instance.load('coal.png');
  cache.putIfAbsent('coal.png', () => coal);

  var cpu = await ByteDataAssets.instance.load('CPU.png');
  cache.putIfAbsent('CPU.png', () => cpu);

  var credit = await ByteDataAssets.instance.load('credit.png');
  cache.putIfAbsent('credit.png', () => credit);

  var ddos = await ByteDataAssets.instance.load('ddos.png');
  cache.putIfAbsent('ddos.png', () => ddos);

  var diamond = await ByteDataAssets.instance.load('diamond.png');
  cache.putIfAbsent('diamond.png', () => diamond);

  var emerald = await ByteDataAssets.instance.load('emerald.png');
  cache.putIfAbsent('emerald.png', () => emerald);

  var ethernet = await ByteDataAssets.instance.load('ethernet.png');
  cache.putIfAbsent('ethernet.png', () => ethernet);

  var france = await ByteDataAssets.instance.load('france.png');
  cache.putIfAbsent('france.png', () => france);

  var germany = await ByteDataAssets.instance.load('germany.png');
  cache.putIfAbsent('germany.png', () => germany);

  var gold = await ByteDataAssets.instance.load('gold.png');
  cache.putIfAbsent('gold.png', () => gold);

  var greece = await ByteDataAssets.instance.load('greece.png');
  cache.putIfAbsent('greece.png', () => greece);

  var iron = await ByteDataAssets.instance.load('iron.png');
  cache.putIfAbsent('iron.png', () => iron);

  var lapis = await ByteDataAssets.instance.load('lapis.png');
  cache.putIfAbsent('lapis.png', () => lapis);

  var location = await ByteDataAssets.instance.load('location.jpg');
  cache.putIfAbsent('location.jpg', () => location);

  var logo = await ByteDataAssets.instance.load('logo-full.png');
  cache.putIfAbsent('logo-full.png', () => logo);

  var netherlands = await ByteDataAssets.instance.load('netherlands.png');
  cache.putIfAbsent('netherlands.png', () => netherlands);

  var america = await ByteDataAssets.instance.load('north america.png');
  cache.putIfAbsent('north america.png', () => america);

  var play = await ByteDataAssets.instance.load('play.jpg');
  cache.putIfAbsent('play.jpg', () => play);

  var pp = await ByteDataAssets.instance.load('pp.png');
  cache.putIfAbsent('pp.png', () => pp);

  var price = await ByteDataAssets.instance.load('price.jpg');
  cache.putIfAbsent('price.jpg', () => price);

  var redstone = await ByteDataAssets.instance.load('redstone.png');
  cache.putIfAbsent('redstone.png', () => redstone);

  var socialFacebook = await ByteDataAssets.instance.load('social-facebook.png');
  cache.putIfAbsent('social-facebook.png', () => socialFacebook);

  var socialGoogle = await ByteDataAssets.instance.load('social-google.png');
  cache.putIfAbsent('social-google.png', () => socialGoogle);

  var stone = await ByteDataAssets.instance.load('stone.png');
  cache.putIfAbsent('stone.png', () => stone);

  var support = await ByteDataAssets.instance.load('support.png');
  cache.putIfAbsent('support.png', () => support);

  var sweden = await ByteDataAssets.instance.load('sweden.png');
  cache.putIfAbsent('sweden.png', () => sweden);

  var uk = await ByteDataAssets.instance.load('united kindom.png');
  cache.putIfAbsent('united kindom.png', () => uk);

  var unlimited = await ByteDataAssets.instance.load('unlimited.png');
  cache.putIfAbsent('unlimited.png', () => unlimited);
 */
 */
