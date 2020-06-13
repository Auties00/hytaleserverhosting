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
      title: 'Hytale Hosting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (_) => HomePage(),
        '/login': (_) => LoginPage(),
        '/register': (_) => RegisterPage(),
        '/purchase/location': (_) => PurchaseSelectServerPage(),
        '/purchase/plan': (_) => PurchaseSelectPlanPage(),
        '/purchase/pay': (_) => PurchasePayPage(),
      },
      initialRoute: '/',
    );
  }
}
