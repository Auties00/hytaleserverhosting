import 'package:flutter/material.dart';
import 'package:hosting/src/page/home_page.dart';
import 'package:hosting/src/dialog/login_dialog.dart';
import 'package:hosting/src/page/purchase_pay.dart';
import 'package:hosting/src/page/purchase_select_plan.dart';
import 'package:hosting/src/page/purchase_select_server.dart';
import 'package:hosting/src/dialog/register_dialog.dart';

import 'package:flutter_web_plugins/url_strategy.dart';


typedef WidgetBuilder = Widget Function(BuildContext context);

void main() {
  usePathUrlStrategy();
  runApp(HytalesHostingApplication());
}

class HytalesHostingApplication extends StatelessWidget {
  final Map<String, WidgetBuilder> _routes =  {
    '/':  (_) => HomePage(),
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
        colorScheme: Theme.of(context).colorScheme.copyWith(
          secondary: Color.fromARGB(255, 36, 37, 58),
          background: Color.fromARGB(255, 27, 27, 45)
        )
      ),
      routes: _routes,
      initialRoute: '/',
    );
  }
}
