import 'package:flutter/material.dart';
import 'package:hosting/src/page/home_page.dart' deferred as home;
import 'package:hosting/src/page/login_page.dart' deferred as login;
import 'package:hosting/src/page/purchase/purchase_pay.dart' deferred as pay;
import 'package:hosting/src/page/purchase/purchase_select_plan.dart' deferred as selectPlan;
import 'package:hosting/src/page/purchase/purchase_select_server.dart' deferred as selectServer;
import 'package:hosting/src/page/register_page.dart' deferred as register;


typedef WidgetBuilder = Widget Function(BuildContext context);

void main() {
  runApp(HytalesHostingApplication());
}

class HytalesHostingApplication extends StatelessWidget {
  final Map<String, WidgetBuilder> _routes =  {
    '/':  (_) {
      return FutureBuilder(
        future: home.loadLibrary(),
        builder: (context, snapshot) => snapshot.connectionState == ConnectionState.done ? home.HomePage() : SizedBox(),
      );
    },
    '/login':  (_) {
      return FutureBuilder(
        future: login.loadLibrary(),
        builder: (context, snapshot) => snapshot.connectionState == ConnectionState.done ? login.LoginPage() : SizedBox(),
      );
    },
    '/register':  (_) {
      return FutureBuilder(
        future: register.loadLibrary(),
        builder: (context, snapshot) => snapshot.connectionState == ConnectionState.done ? register.RegisterPage() : SizedBox(),
      );
    },
    '/purchase/location':  (_) {
      return FutureBuilder(
        future: selectServer.loadLibrary(),
        builder: (context, snapshot) => snapshot.connectionState == ConnectionState.done ? selectServer.PurchaseSelectServerPage() : SizedBox(),
      );
    },
    '/purchase/plan':  (_) {
      return FutureBuilder(
        future: selectPlan.loadLibrary(),
        builder: (context, snapshot) => snapshot.connectionState == ConnectionState.done ? selectPlan.PurchaseSelectPlanPage() : SizedBox(),
      );
    },
    '/purchase/pay':  (_) {
      return FutureBuilder(
        future: pay.loadLibrary(),
        builder: (context, snapshot) => snapshot.connectionState == ConnectionState.done ? pay.PurchasePayPage() : SizedBox(),
      );
    },
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
