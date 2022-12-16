import 'package:flutter/material.dart';
import 'package:hosting/src/page/home_page.dart';
import 'package:hosting/src/page/login_page.dart';
import 'package:hosting/src/page/purchase_pay.dart';
import 'package:hosting/src/page/purchase_select_plan.dart';
import 'package:hosting/src/page/purchase_select_server.dart';
import 'package:hosting/src/page/register_page.dart';


typedef WidgetBuilder = Widget Function(BuildContext context);

void main() {
  runApp(HytalesHostingApplication());
}

class HytalesHostingApplication extends StatelessWidget {
  final Map<String, WidgetBuilder> _routes =  {
    '/':  (_) => HomePage(),
    '/login':  (_) => LoginPage(),
    '/register':  (_) => RegisterPage(),
    '/purchase/location':  (_) => PurchaseSelectServerPage(),
    '/purchase/plan':  (_) => PurchaseSelectPlanPage(),
    '/purchase/pay':  (_) => PurchasePayPage()
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
